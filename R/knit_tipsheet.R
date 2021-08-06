knit_tipsheet <- function(input, ...) {

	# append a date to the input file name
	output_file = paste0(
		xfun::sans_ext(input),
		'_',
		format(Sys.Date(), "%Y_%m_%d")
		)

	# knit the file with the new file name
	rmarkdown::render(
		input,
		output_file   = output_file,
		output_dir    = './output',
		envir         = globalenv()
	)
}
