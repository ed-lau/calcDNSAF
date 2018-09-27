#' @title Calculate dNSAF
#'
#' @description This function calculates distributed normalized spectral abundance factor from a percolator target psms file
#' @param percolatorFile a tibble read from the percolator target psms file
#' @param fasta a Biostrings AA string set containing a proteomics database used in the search
#' @param test_run Whether to do a short run of only 100 search results? Defaults to FALSE
#' @param q_cutoff Percolator q vsalue cutoff to consider as confident peptide. Defaults to 0.01
#' @keywords dNSAF proteomics
#' @export
#' @examples
#' dnsaf(percolatorFile=percolator_target_psms)
#'
#'



dnsaf <- function(percolatorFile,
                  fasta,
                  test_run=F,
                  q_cutoff=0.01){

  require(Biostrings)
  require(tidyverse)

  ##
  ##  Read percolator.target.psms.txt and filter by q value
  ##
  #add a column to count the number of shared peptides
  percolatorFile <- dplyr::filter(percolatorFile, `percolator q-value` <= q_cutoff)

  # If test_run flag is set, do only first 100 rows for testing
  if(test_run){percolatorFile <- percolatorFile %>% dplyr::slice(1:100)}


  ##
  ##  Count number of proteins each PSM sequence is matched to
  ##

  # count number of commas to indicate the number of shared peptides in the percolator.target.psms.txt file, 1 is not shared, >1 indicates how many are shared.
  percolatorFile$NoProteinsNew <- lapply(percolatorFile$`protein id`, function(i) length(unlist(stringr::str_split(i, ","))))
  percolatorFile$UniquePep <- eval(percolatorFile$NoProteinsNew == 1)
  percolatorFile$SharedPep <- eval(percolatorFile$NoProteinsNew > 1)

  # separate redundant protein IDs into separate rows
  percolatorFile <- percolatorFile %>% tidyr::separate_rows(`protein id`, sep=",")


  ##
  ##  Get Protein unique peptide spectrum counts
  ##

  # Get a matrix of unique peptide spectrum counts by each protein
  uniqueCounts <- percolatorFile %>% dplyr::distinct(`protein id`, sequence, scan, UniquePep) %>% # Get unique combinations of protein ID and scan number
    dplyr::group_by(`protein id`) %>% dplyr::summarize(uSc = sum(UniquePep)) %>% dplyr::ungroup() %>% # Count the number of unique peptides
    tibble::column_to_rownames("protein id") %>% data.matrix() # Turn to a numeric vector format


  # Get a relationship matrix between all peptides and all proteins
  peptideIDmatrix <- percolatorFile %>% dplyr::distinct(sequence, `protein id`) %>%  # Get unique combination of
    dplyr::mutate(relationship = 1) %>% # Make a dummy variable where 1 denotes peptide is linked to protein
    tidyr::spread(`protein id`, relationship) %>% # Spread long data table into a peptide x protein matrix
    tibble::column_to_rownames("sequence") %>% data.matrix() # Turn into a numeric matrix format

  # Turn NAs into 0
  peptideIDmatrix[is.na(peptideIDmatrix)] <- 0

  # Reorder the protein unique count matrix using the column names of the peptide-protein relationship matrix
  uniqueCounts <- uniqueCounts[colnames(peptideIDmatrix), ] %>% data.matrix()

  # Giving the poor proteins with no unique count a 0.5 count
  uniqueCounts[uniqueCounts==0] <- 0.5

  # Multiply the two matrices together to get a matrix of peptides by the unique specturm counts of each protein to which they belong
  uniqueCountMatrix <- (t(peptideIDmatrix) * uniqueCounts[,1]) %>% t()

  # Normalize each row by the sum of all unique counts of all proteins the peptide belongs to, to get the distribution matrix
  distributionMatrix <- uniqueCountMatrix/rowSums(uniqueCountMatrix)

  # Get the peptide sequence redundancy numbers (spectral count for each peptide regardless of shared or unique)
  peptideCounts <- percolatorFile %>% dplyr::distinct(sequence, scan) %>% # Get unique combinations of protein ID and scan number
    dplyr::group_by(sequence) %>% dplyr::summarize(count = n()) %>% dplyr::ungroup() %>% # Count the number of unique peptides
    tibble::column_to_rownames("sequence") %>% data.matrix() # Turn to a numeric vector format

  # Reorder the peptide count matrix using the row names of the peptide-protein relationship matrix
  peptideCounts <- peptideCounts[rownames(peptideIDmatrix), ] %>% data.matrix()

  # Multiply the peptide spectral counts by the distribution matrix
  distributedCountMatrix <- (distributionMatrix * peptideCounts[,1])

  # Get column sums of the distributed counts
  distributedCounts <- colSums(distributedCountMatrix)

  # Turn into data frame
  distributedCountDF <- distributedCounts %>% as.data.frame() %>% tibble::rownames_to_column()
  colnames(distributedCountDF) <- c("Uniprot", "distributedCounts")

  ##
  ##  Read Uniprot to get protein length
  ##

  # Read fasta


  # Get a dataframe of names and lengths
  lengthDF <- data.frame(Names=names(fasta), len = Biostrings::width(fasta))

  # Get short accession
  lengthDF$Uniprot <- lapply(lengthDF$Names, function(i) as.character(gsub(" .*$", "", i))) %>% unlist()

  ##
  ## Put everything together into a data frame for output
  ##

  # Create output data frame iwth unique counts
  outputDF <- uniqueCounts %>% as.data.frame() %>% tibble::rownames_to_column()
  colnames(outputDF) <- c("Uniprot", "uniqueCounts")

  # Join protein unique count to protein length and distributed counts
  outputDF <- outputDF %>% left_join(lengthDF) %>% left_join(distributedCountDF)

  # Calculate SAF and dSAF
  outputDF <- outputDF %>% dplyr::mutate(SAF = uniqueCounts/len, dSAF = distributedCounts/len)

  # Calculate NSAF and dNSAF
  outputDF <-  outputDF %>% dplyr::mutate(NSAF = SAF/sum(SAF), dNSAF = dSAF/sum(dSAF))

  # Write to file
  #write.table(outputDF, "output.txt", sep="\t", row.names=F, quote=F)
  return(outputDF)
}

