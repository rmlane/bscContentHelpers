#' Knit a Document to an HTML Draft
#'
#' @param toc Include a table of contents (2 levels deep)?
#'
#' @export
html_draft <- function(toc = TRUE) {

	# fetch the css styles
	css    = bscContentHelpers::pkg_resource("rmd_files/custom.css")

	# call the base bookdown::html_document2 function
	bookdown::html_document2(
			toc             = toc,
			toc_depth       = 2,
			number_sections = FALSE,
			css             = css
		)
}
