
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mypkg

<!-- badges: start -->
<!-- badges: end -->

The goal of mypkg is to test the R package development during the Isped
summer school.

## Installation

You can install the development version of mypkg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("melaniehuchon/mypkg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mypkg)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
matrice <- cbind(c(1,2), c(3,4))
mean <- c(1, 1)
varcov <- diag(1, 2)
mvnpdf(x = matrice, mean = mean, varcovM = varcov)
#> $x
#>      [,1] [,2]
#> [1,]    1    3
#> [2,]    2    4
#> 
#> $y
#> [1] -2.837877 -8.837877
#> 
#> attr(,"class")
#> [1] "mvnpdf"
```
