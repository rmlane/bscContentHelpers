#' Fetch the reference doc associated with a theme
#'
#' @param theme The name of the theme. Must match the name of the reference file.
#' @param extension The extension of the reference doc, without a period
#'
#' @return The path to the reference document. If no document was found, returns `NULL`.
#' @export
#'
#' @examples find_theme_doc("red", extension = "pptx")
find_theme_doc <- function(theme, extension) {

	# set default to NULL
	themedoc = NULL

	# look for style reference doc; plain is backup
	for (t in c(theme, "plain")) {
		themedoc = bscContentHelpers::pkg_resource(
			paste0("rmd_files/", t, ".", extension)
		)

		# if a match is found, stop looking
		if (!is.null(themedoc)) {break}
	}

	# return file reference
	themedoc
}
