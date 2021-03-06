% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_temp_draft.R
\name{create_temp_draft}
\alias{create_temp_draft}
\title{Create a Temp Draft from a R Markdown Template}
\usage{
create_temp_draft(template, package = "bscContentHelpers", edit = FALSE)
}
\arguments{
\item{template}{The name of the template}

\item{package}{The name of the package that contains the template. Defaults to \code{bscContentHelpers} (the current package)}

\item{edit}{Open the draft for editing Defaults to \code{FALSE}.}
}
\value{
The location of the temp file.
}
\description{
Create a Temp Draft from a R Markdown Template
}
\examples{
create_temp_draft("article")
}
