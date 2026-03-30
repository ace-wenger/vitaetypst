#' Convert a data frame to a detailed resume entry
#'
#' @param data A data frame with five or six columns, each providing different information about the entry (row)
#' @param what The column name providing the name of the detailed entry (e.g., position title, degree)
#' @param with The column name providing the organization (e.g., company, university)
#' @param when The column name providing the date range
#' @param where The column name providing the geographic location or address
#' @param description The column name providing a brief description, which is the first bullet point
#' @param details Optional, the column name providing one or more details as a named list
#'
#' @return A typst string calling the `#entry_detailed` typst function
#' @export
#'
#' @examples
entry_detailed <- function(
    data,
    what = "what",
    with = "with",
    when = "when",
    where = "where",
    description = "description",
    details = NULL) {
  typst_strings <- apply(data, 1, function(row) {
    s <- "#entry_detailed("
    if (!is.na(row[with])) {
      s <- sprintf("%swith: [%s],", s, row[with])
    }
    if (!is.na(row[where])) {
      s <- sprintf("%swhere: [%s],", s, row[where])
    }
    if (!is.na(row[what])) {
      s <- sprintf("%swhat: [%s],", s, row[what])
    }
    if (!is.na(row[when])) {
      s <- sprintf("%swhen: [%s],", s, row[when])
    }
    s <- paste0(s, ")")

    b <- NA

    if (!is.null(details)) {
      if (details == "all") {
        stop("can't handle details argument")
      } else {
        stop("can't handle details argument")
      }
    } else {
      if (!is.na(row[description])) {
        b <- "\n#bullet_list("
        b <- sprintf("%s[%s],", b, row[description])
        b <- paste0(b, ")")
      }
    }

    typst_string <- paste(s, b, collapse = "\n")

    return(typst_string)
  })

  cat(paste0("```{=typst}\n", paste(typst_strings, collapse = "\n"), "\n```"))
}
