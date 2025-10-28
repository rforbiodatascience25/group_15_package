#' Generate barplot of amino acid counts
#'
#' This function takes a string of one letter amino acid codes,
#'  and generates a barplot showing the counts of each amino acid.
#'
#'
#' @param AA_string A string of one letter amino acid codes. Any non-amino acids will be ignored.
#' @returns geom_col with amino acids on x-axis and counts on y.
#'
#' @importFrom stringr str_split boundary str_count
#' @import ggplot2
#'
#' @examples
#' AA_counts_plot("SSFPTAYYHQNNQQ")
AA_counts_plot <- function(AA_string){

  #Separate string into character vector by character
  amino_acids <- AA_string |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  #Count number of times each amino acid is found in the character vector amino_acids
  counts <- sapply(amino_acids, function(amino_acid) stringr::str_count(string = AA_string, pattern =  amino_acid)) |>
    as.data.frame()

  #Create list with amino acids and their counts
  colnames(counts) <- c("Counts")
  counts[["AA_string"]] <- rownames(counts)

  AA_barplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AA_string, y = Counts, fill = AA_string)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(AA_barplot)
}
