#' Fetch a Resource from the Current Package
#'
#' @param ... The search string for the desired resource
#'
#' @return The path to the resource
#' @export
#'
#' @examples pkg_resource("rmd_files/custom.css")
pkg_resource <- function(...) {
	system.file(..., package = "bscContentHelpers")
}
