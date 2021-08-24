#' Knit a Document to an HTML Draft
#'
#' @param toc Include a table of contents (2 levels deep)?
#' @param css Path to css stylesheet
#'
#' @export
html_draft <- function(toc = TRUE, css = NULL) {

	# fetch the css styles
	if (is.null(css)) {
		css    = bscContentHelpers::pkg_resource("rmd_files/custom.css")
	}

	# call the base bookdown::html_document2 function
	bookdown::html_document2(
			toc             = toc,
			toc_depth       = 2,
			number_sections = FALSE,
			css             = css
		)
}
