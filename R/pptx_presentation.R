#' Powerpoint R Markdown Template
#'
#' @export
pptx_presentation <- function() {

	# choose style template
	ref_ppt = pkg_resource("rmd_files/uic_ref.pptx")

	# call the base powerpoint_presentation function
	rmarkdown::powerpoint_presentation(
		reference_doc = ref_ppt
	)
}
