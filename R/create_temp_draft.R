#' Create a Temp Draft from a R Markdown Template
#'
#' @param template The name of the template
#' @param package The name of the package that contains the template. Defaults to `bscContentHelpers` (the current package)
#' @param edit Open the draft for editing Defaults to `FALSE`.
#'
#' @return The location of the temp file.
#' @export
#'
#' @examples create_temp_draft("tipsheet")
create_temp_draft <- function(template, package = "bscContentHelpers", edit = FALSE) {
	# create a temp file location
	temp_temp <- tempfile(fileext = ".Rmd")

	# create the draft
	rmarkdown::draft(
		temp_temp,
		template = template,
		package  = package,
		edit     = edit
	)

	# return the file reference
	temp_temp
}

