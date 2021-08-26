#' Word (docx) document output format, with optional themes
#'
#' @param toc Include a table of contents (2 levels deep)?
#' @param theme Theme to use in styling the output document
#'
#' @export
word_document <- function(toc = TRUE, theme = "plain") {

	# fetch the stylesheet
	refdoc = bscContentHelpers::find_theme_doc(theme, "docx")

	# call the base word_document function
	bookdown::word_document2(
		toc            = toc,
		reference_docx = refdoc
	)
}
