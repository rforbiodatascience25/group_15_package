#' Title
#'
#' @param param1
#' @param param2
#' @importFrom stringr str_split boundary str_count
#' @import ggplot2
name_me1 <- function(name_me2){

  name_me3 <- name_me2 |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(name_me3, function(amino_acid) stringr::str_count(string = name_me2, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Name_me2"]] <- rownames(counts)

  name_me4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Name_me2, y = Counts, fill = Name_me2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(name_me4)
}
