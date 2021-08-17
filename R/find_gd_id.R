#' Look Up the Id of a Google Drive Subdirectory
#'
#' @param dirname The name of the subdirectory. Can be a partial match
#' @param type Type of resource to find. Defaults to "folder".
#' @param gd_id The id of the parent folder on Google Drive. Defaults to the environmental variable `gd_id`.
#'
#' @return The Google Drive id (a string).
#' @export
#'
#' @examples
#' \dontrun{find_gd_id("templates")}
find_gd_id <- function(dirname,
											 type  = "folder",
											 gd_id = Sys.getenv("gd_id")) {

	# get folder/file list from googledrive
	gd_sub <- googledrive::drive_ls(
		googledrive::as_id(gd_id),
		type      = type,
		recursive = TRUE
	)

	# return id of name string matches
	sub_id <- gd_sub[which(grepl(tolower(dirname), tolower(gd_sub$name))),"id"]
	unlist(sub_id, use.names = FALSE)
}
