#' Fetch a Resource from the Current Package
#'
#' @param ... The search string for the desired resource
#'
#' @return The path to the resource
#' @export
#'
#' @examples pkg_resource("rmd_files/custom.css")
pkg_resource <- function(...) {
	# look for a match
	f = system.file(..., package = "bscContentHelpers")

	# if nothing is found, return NULL
	if (f == "") {f = NULL}

	# return
	f
}
