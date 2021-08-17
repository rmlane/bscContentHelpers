
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
key. The package must be installed to access the document templates,
functions, and supporting files.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bscContentHelpers)
## basic example code
```

## Document Templates

Each document template relies on three files: [an .Rmd
template](#rmd-template), [an output format](#output-format), and [a
knit function](#knit-function).

### A .Rmd Template

At its most basic, an .Rmd template is a sample file, written in R
Markdown, that may include standard headers, sample code, or boilerplate
text. It will also contain default and placeholder settings in a header
block.

In the context of an R package, an Rmd template also includes supporting
documents and settings. This controls the structure of a document. For
example, it

Create a new blank document based on a template by calling
`rmarkdown::draft("my_article.Rmd", template = "template_name", package = "bscContentHelpers")`.

For example, to create a new tipsheet, call:

``` r
rmarkdown::draft("covid_tipsheet.Rmd", template = "tipsheet", package = "bscContentHelpers")
```

If the package is installed, templates are also available through the
`File > New File > R Markdown... > From Template` dialog box in R
Studio.

![Create a new doc from a
template.](man/figures/new_doc_from_template.png)

Existing BSC templates include:

-   Tipsheet. This could also be used for a short article.

### An Output Format

This is an R function that defines the file type (e.g., docx, html) and
the look and feel of the output document. It should be referenced in the
YAML frontmatter of the Rmd document.

Current custom formats:

-   `html_draft`. This should be used while developing content to avoid
    focusing too much on the final aesthetic details.

TODO:

-   `tipsheet_pdf`

### A Knit Function

This controls the behavior of the knit button; in other words, it
determines how the Rmd draft gets turned into the PDF output. Some
settings are customizable (for example, should the final document
include a table of contents?). Others are pre-set.

In general, you should not need to make any changes to the knit
function, beyond possibly changing some parameters.

## Google Drive Integration

Templates and documents are stored on Google Drive and cann be accessed
through R Studio via the [`googledrive`
package](https://googledrive.tidyverse.org/). Install the package by
calling

``` r
install.packages("googledrive")
```

Reading files from and writing files to Google Drive requires
authorization. To ensure you have access, call in the console:

``` r
# library(googledrive)
# library(tidyverse)

# view files in google drive folder
# gd_id <- Sys.getenv("gd_id")
# googledrive::drive_ls(as_id(gd_id), recursive = TRUE)
```

``` r
# get location of templates on google drive
# gd_templates <- as_id(gd_id) %>% 
#   drive_ls() %>% 
#   filter(grepl("(?i)templates", name)) %>% 
#   pull(id)
```

``` r
# # create a temp file and create template 
# temp <- tempfile(fileext = ".Rmd")
# rmarkdown::draft(temp, template = "tipsheet", package = "bscContentHelpers", edit = TRUE)
# 
# # upload to Templates file on drive
# drive_put(temp, path = gd_templates, name = "Tipsheet")
# 
# # verify
# drive_ls(as_id(gd_id), recursive = TRUE, type="folder") 
```

You should be sent to a login screen. Authorize Tidyverse API to access
your Google account.

[See the Tidyverse site for `googledrive`
documentation.](https://googledrive.tidyverse.org/)

BSC files are saved in a [BSC Content folder on Google
Drive](https://drive.google.com/drive/folders/16XepzMyzRAK4pcuET8goearkb0J5GwLP).
View files:

``` r
googledrive::drive_ls(as_id(gd_id), recursive = TRUE)
```

## TODO

-   [ ] decide when, where, and how files should be uploaded to Drive
-   [ ] set target (dynamic) locations for outputs
-   [ ] write a `knit_template` function that will regenerate Rmd
    templates in Drive
-   [ ] workflows and functions to convert from one template to another
-   [ ] connect document titles to file names (and calls to
    `rmarkdown::draft()`)
-   [ ] where to set output doc parameters for use in knit fxn?
