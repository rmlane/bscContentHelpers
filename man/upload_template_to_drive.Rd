% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/upload_template_to_drive.R
\name{upload_template_to_drive}
\alias{upload_template_to_drive}
\title{Create a New File from a Template and Upload it to Drive}
\usage{
upload_template_to_drive(
  template,
  upload_name = NULL,
  gd_target_id = Sys.getenv("gd_template_id")
)
}
\arguments{
\item{template}{The name of the Rmd template}

\item{upload_name}{The name of the document as displayed in Drive}

\item{gd_target_id}{The id of the destination subdirectory in Drive}
}
\description{
Create a New File from a Template and Upload it to Drive
}
\examples{
\dontrun{upload_template_to_drive("article")}
}
