#' Install the bundled Awesome-CV Typst Quarto extension
#'
#' Copies the extension from the package's `inst/` directory into your project
#' (exactly like `vitae` bundles its LaTeX templates).
#'
#' @export
install_awesomecv <- function() {
  src <- system.file("_extensions/awesomecv", package = "typstcv")
  if (!dir.exists(src)) stop("Bundled extension not found in typstcv package.")

  dest <- file.path(".", "_extensions", "awesomecv")
  dir.create(dirname(dest), recursive = TRUE, showWarnings = FALSE)

  file.copy(src, "_extensions", recursive = TRUE, overwrite = TRUE)
  cli::cli_alert_success("Awesome-CV Typst extension installed from typstcv package!")
}
