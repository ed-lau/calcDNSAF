
<!-- README.md is generated from README.Rmd. Please edit that file -->
calcDNSAF
=========

Calculates dNSAF.

Installation
------------

You can install the released version of calcDNSAF from [CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("ed-lau/calcDNSAF")
```

Example
-------

Example usage using the example data from the package:

``` r
library(calcDNSAF)
out <- calcDNSAF::dnsaf(percolatorFile = percolatorFile, fasta = Mm_UniProt, test_run=T, q_cutoff=0.01)
```

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Uniprot
</th>
<th style="text-align:right;">
uniqueCounts
</th>
<th style="text-align:right;">
len
</th>
<th style="text-align:right;">
distributedCounts
</th>
<th style="text-align:right;">
SAF
</th>
<th style="text-align:right;">
dSAF
</th>
<th style="text-align:right;">
NSAF
</th>
<th style="text-align:right;">
dNSAF
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
sp|E9PZQ0|RYR1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
5.0e+03
</td>
<td style="text-align:right;">
5.0e-01
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0.0e+00
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|E9Q401|RYR2\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
5.0e+03
</td>
<td style="text-align:right;">
5.0e-01
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0.0e+00
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|O08749|DLDH\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
5.1e+02
</td>
<td style="text-align:right;">
2.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|O55143|AT2A2\_MOUSE
</td>
<td style="text-align:right;">
9e+00
</td>
<td style="text-align:right;">
1.0e+03
</td>
<td style="text-align:right;">
7.8e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
4.0e-02
</td>
<td style="text-align:right;">
4.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|O70250|PGAM2\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
2.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|O70468|MYPC3\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
1.3e+03
</td>
<td style="text-align:right;">
2.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P02301|H3C\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
1.4e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
7.0e-02
</td>
<td style="text-align:right;">
4.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P07724|ALBU\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
6.1e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P07759|SPA3K\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.2e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P09671|SODM\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
2.2e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P13707|GPDA\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P16858|G3P\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
3.3e+02
</td>
<td style="text-align:right;">
2.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P26231|CTNA1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
9.1e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P29699|FETUA\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.4e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P35486|ODPA\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
3.9e+02
</td>
<td style="text-align:right;">
2.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P41216|ACSL1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
7.0e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P45952|ACADM\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.2e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P50544|ACADV\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
6.6e+02
</td>
<td style="text-align:right;">
2.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P52825|CPT2\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
6.6e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P54071|IDHP\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P56480|ATPB\_MOUSE
</td>
<td style="text-align:right;">
5e+00
</td>
<td style="text-align:right;">
5.3e+02
</td>
<td style="text-align:right;">
5.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
5.0e-02
</td>
<td style="text-align:right;">
5.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P62631|EF1A2\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.6e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P62737|ACTA\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.8e+02
</td>
<td style="text-align:right;">
2.5e-01
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P63038|CH60\_MOUSE
</td>
<td style="text-align:right;">
3e+00
</td>
<td style="text-align:right;">
5.7e+02
</td>
<td style="text-align:right;">
3.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P63242|IF5A1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
1.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
4.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P63268|ACTH\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.8e+02
</td>
<td style="text-align:right;">
2.5e-01
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P68033|ACTC\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.8e+02
</td>
<td style="text-align:right;">
2.5e-01
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P68134|ACTS\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.8e+02
</td>
<td style="text-align:right;">
2.5e-01
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P84244|H33\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
1.4e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
7.0e-02
</td>
<td style="text-align:right;">
4.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|P97807|FUMH\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
5.1e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q02566|MYH6\_MOUSE
</td>
<td style="text-align:right;">
8e+00
</td>
<td style="text-align:right;">
1.9e+03
</td>
<td style="text-align:right;">
6.7e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q03265|ATPA\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
5.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q61425|HCDH\_MOUSE
</td>
<td style="text-align:right;">
7e+00
</td>
<td style="text-align:right;">
3.1e+02
</td>
<td style="text-align:right;">
7.0e+00
</td>
<td style="text-align:right;">
2e-02
</td>
<td style="text-align:right;">
2e-02
</td>
<td style="text-align:right;">
1.1e-01
</td>
<td style="text-align:right;">
1.3e-01
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q6P8J7|KCRS\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.2e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q8BMS1|ECHA\_MOUSE
</td>
<td style="text-align:right;">
4e+00
</td>
<td style="text-align:right;">
7.6e+02
</td>
<td style="text-align:right;">
4.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q8BWT1|THIM\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.0e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q8CGK3|LONM\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
9.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q8K310|MATR3\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
8.5e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q8R429|AT2A1\_MOUSE
</td>
<td style="text-align:right;">
4e+00
</td>
<td style="text-align:right;">
9.9e+02
</td>
<td style="text-align:right;">
1.2e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q91VD9|NDUS1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
7.3e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q91Z83|MYH7\_MOUSE
</td>
<td style="text-align:right;">
4e+00
</td>
<td style="text-align:right;">
1.9e+03
</td>
<td style="text-align:right;">
1.3e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
0.0e+00
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q99JY0|ECHB\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.8e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q99KI0|ACON\_MOUSE
</td>
<td style="text-align:right;">
4e+00
</td>
<td style="text-align:right;">
7.8e+02
</td>
<td style="text-align:right;">
4.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q99NB1|ACS2L\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
6.8e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9CR68|UCRI\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
2.7e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9CZ13|QCR1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.8e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9CZU6|CISY\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.6e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9D0F9|PGM1\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
5.6e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9D0M3|CY1\_MOUSE
</td>
<td style="text-align:right;">
2e+00
</td>
<td style="text-align:right;">
3.2e+02
</td>
<td style="text-align:right;">
2.0e+00
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
1e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9DCS3|MECR\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
3.7e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
2.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9DCT8|CRIP2\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
2.1e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
2.0e-02
</td>
<td style="text-align:right;">
3.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9JHI5|IVD\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
4.2e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
<tr>
<td style="text-align:left;">
sp|Q9QXX4|CMC2\_MOUSE
</td>
<td style="text-align:right;">
1e+00
</td>
<td style="text-align:right;">
6.8e+02
</td>
<td style="text-align:right;">
1.0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
0e+00
</td>
<td style="text-align:right;">
1.0e-02
</td>
<td style="text-align:right;">
1.0e-02
</td>
</tr>
</tbody>
</table>
