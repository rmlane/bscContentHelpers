#' Create a PDF Document
#'
#' @return R Markdown output format to pass to render
#' @export
#'
pdf_document <- function() {
	bookdown::pdf_document2(
		toc = FALSE,
		toc_depth = 2,
		number_sections = FALSE,
		fig_width = 6.5,
		fig_height = 4.5,
		fig_crop = "auto",
		fig_caption = TRUE,
		dev = "pdf",
		df_print = "default",
		highlight = "default",
		template = "default",
		keep_tex = FALSE,
		keep_md = FALSE,
		latex_engine = "pdflatex",
		citation_package = "default",
		includes = NULL,
		md_extensions = NULL,
		output_extensions = NULL,
		pandoc_args = NULL,
		extra_dependencies = NULL
	)
}
