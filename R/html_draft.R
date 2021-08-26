#' HTML document output format, with optional themes
#'
#' @param toc Include a table of contents (2 levels deep)?
#' @param theme Name of theme used in styling the output
#'
#' @export
html_draft <- function(toc = TRUE, theme = "plain") {

	# fetch the css styles
	css = bscContentHelpers::find_theme_doc(theme, "css")

	# call the base bookdown::html_document2 function
	bookdown::html_document2(
			toc             = toc,
			toc_depth       = 2,
			number_sections = FALSE,
			css             = css
		)
}
