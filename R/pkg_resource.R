#' Fetch a Resource from the Current Package
#'
#' @param ... The search string for the desired resource
#' @param package The name of the package
#'
#' @return The path to the resource
#' @export
#'
#' @examples pkg_resource("rmd_files/custom.css")
pkg_resource <- function(..., package = "bscContentHelpers") {
	# look for a match
	f = system.file(..., package = package)

	# if nothing is found, return NULL
	if (f == "") {f = NULL}

	# return
	f
}
