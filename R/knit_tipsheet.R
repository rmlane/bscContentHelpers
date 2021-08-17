#' Define Knitting Behavior for a Tipsheet
#'
#' @param input The (current) input file
#' @param output_dir The location of the output file. Defaults to the same location as the Rmd file.
#' @param output_file The name of the output file, without an extension. Defaults to the input file name.
#' @param date_in_name Logical. Should the output file name include today's date?
#' @param ... Additional arguments
#'
#' @export
knit_tipsheet <- function(
	input,
	output_dir   = NULL,
	output_file  = NULL,
	date_in_name = TRUE,
	...) {

	# if no output name was passed, use the input file name
	if (is.null(output_file)) {
		output_file = xfun::sans_ext(input)
	}

	# append a date to the output file name
	if (date_in_name) {
		output_file = paste0(
		output_file,
		format(Sys.Date(), "%Y_%m_%d"),
		sep = "_"
		)
	}

	# knit the file with the new file name
	rmarkdown::render(
		input,
		output_file   = output_file,
		output_dir    = output_dir,
		envir         = globalenv()
	)
}
