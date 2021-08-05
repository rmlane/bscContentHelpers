
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bscContentHelpers

<!-- badges: start -->
<!-- badges: end -->

The goal of bscContentHelpers is to provide templates and utilities for
creating, editing, and storing documents for the UIC CCTS Biostatistics
Core.

## Installation

You can install the development version of bscContentHelpers from
[Github](https://github.com/) with:

``` r
install_github("rmlane/bscContenHelpers")
```

The repository is currently private, so you will need an authorization
key.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bscContentHelpers)
## basic example code
```

## Google Drive Integration

Reading files from and writing files to Google Drive requires
authorization. To ensure you have access, call:

``` r
googledrive::drive_find(n_max = 20)
```

You should be sent to a login screen. Authorize Tidyverse API to access
your Google account.

[See the Tidyverse site for `googledrive`
documentation.](https://googledrive.tidyverse.org/)

BSC files are saved in a [BSC Content folder on Google
Drive](https://drive.google.com/drive/folders/16XepzMyzRAK4pcuET8goearkb0J5GwLP).
View files:

``` r
googledrive::drive_get(id = "16XepzMyzRAK4pcuET8goearkb0J5GwLP")
```
