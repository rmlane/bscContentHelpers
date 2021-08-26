#' Powerpoint (pptx) document output format, with optional themes
#'
#' @param theme Name of theme to use when styling output presentation
#'
#' @export
pptx_presentation <- function(theme = "red") {

	# choose style template
	refdoc = bscContentHelpers::find_theme_doc(theme, "pptx")

	# call the base powerpoint_presentation function
	rmarkdown::powerpoint_presentation(
		reference_doc = refdoc
	)
}
