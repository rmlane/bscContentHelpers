#' Create a New File from a Template and Upload it to Drive
#'
#' @param template The name of the Rmd template
#' @param upload_name The name of the document as displayed in Drive
#' @param gd_target_id The id of the destination subdirectory in Drive
#'
#' @export
#'
#' @examples
#' \dontrun{upload_template_to_drive("tipsheet")}
upload_template_to_drive <- function(
	template,
	upload_name    = NULL,
	gd_target_id   = Sys.getenv("gd_template_id")
	) {

	# create a temp file from the template and capture the location
	temp_temp <- create_temp_draft(template)

	# use name of template if no name supplied
	if (is.null(upload_name)) {
		upload_name <- tools::toTitleCase(template)
	}

	# upload to correct location on Google Drive
	googledrive::drive_put(
		temp_temp,
		path = googledrive::as_id(gd_target_id),
		name = upload_name
	)
	}
