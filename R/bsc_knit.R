#' Define custom knit behavior
#'
#' @param input The document to knit
#' @param ... Additional arguments
#'
#' @export
bsc_knit <- function(input, ...) {

	# set default render arguments
	yaml = list(
		output_format = "all",
		output_file   = NULL,
		output_dir    = NULL,
		dated_file    = FALSE,
		file_date     = Sys.Date()
		)

	# get custom metadata from file
	custom = rmarkdown::yaml_front_matter(input)

	# replace defaults with custom
	yaml[names(custom)] <- custom

	# if no output_file name was passed, use simplified document title
	if (is.null(yaml$output_file)) {
		yaml$output_file = gsub("[^a-zA-Z0-9]+", "_", yaml$title)
	}

	# if requested, add date to file name
	if (yaml$dated_file) {
		yaml$output_file = paste0(
			c(
				yaml$output_file,
				format(as.Date(yaml$file_date, "%Y_%m_%d"))
				),
			collapse = "_"
			)
		}

	# if output_format is 'all',
	# file name and directory need to be repeated for each format
	if (yaml$output_format == 'all') {
		yaml$output_file = rep(yaml$output_file, length(yaml$output))
		yaml$output_dir  = rep(yaml$output_dir,  length(yaml$output))
	}

	# knit the file with the new file name
	rmarkdown::render(
		input,
		output_format = yaml$output_format,
		output_file   = yaml$output_file,
		output_dir    = yaml$output_dir,
		envir         = globalenv()
	)
}
