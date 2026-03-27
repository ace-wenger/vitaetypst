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
    details = "detail") {
  strings <- apply(data, 1, function(row) {
    s <- "#entry_detailed("
    if (!is.na(row[title])) {
      s <- sprintf("%stitle: [%s],", s, row[title])
    }
    if (!is.na(row[location])) {
      s <- sprintf("%slocation: [%s],", s, row[location])
    }
    if (!is.na(row[date])) {
      s <- sprintf("%sdate: [%s],", s, row[date])
    }
    if (!is.na(row[description])) {
      s <- sprintf("%sdescription: [%s],", s, row[description])
    }
    s <- paste0(s, ")")

    if (!is.null(details)) {
      if (any(!is.na(row[details]))) {
        s <- paste0(
          s,
          "\n#resume-item[\n",
          paste0("- ", row[details][!is.na(row[details])], collapse = "\n"),
          "\n]"
        )
      }
    }

    return(s)
  })

  cat(paste0("```{=typst}\n", paste(strings, collapse = "\n"), "\n```"))
}
