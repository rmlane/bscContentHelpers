#' Fetch the reference doc associated with a theme
#'
#' @param theme The name of the theme. Must match the name of the reference file.
#' @param extension The extension of the reference doc, without a period
#'
#' @return The path to the reference document. If no document was found, returns `NULL`.
#' @export
#'
#' @examples find_theme_doc("red", extension = "pptx")
find_theme_doc <- function(theme, extension = c("docx", "pptx")) {

	# find style reference doc
	themedoc = bscContentHelpers::pkg_resource(
		paste0("rmd_files/", theme, ".", extension)
	)

	# if reference doc wasn't found, return `NULL`
	if (themedoc == "") {
		themedoc = NULL
	}

	# return value
	themedoc
}
