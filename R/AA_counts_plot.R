#' Generate barplot of amino acid counts
#'
#' This function takes a string of one letter amino acid codes,
#'  and generates a barplot showing the counts of each amino acid.
#'
#'  While designed for amino acids sequences, the function also works with DNA and RNA sequences.
#'
#'
#' @param sequence A string of one letter amino acid codes or nucleotides. Any non-amino acids or nucleotides will be ignored.
#' @returns geom_col with amino acids on x-axis and counts on y.
#'
#' @importFrom stringr str_split boundary str_count
#' @import ggplot2
#'
#' @examples
#' AA_counts_plot("SSFPTAYYHQNNQQ")
AA_counts_plot <- function(sequence){

  #Separate string into character vector by character
  amino_acids <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  #Count number of times each amino acid is found in the character vector amino_acids
  counts <- sapply(amino_acids, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

  #Create list with amino acids and their counts
  colnames(counts) <- c("Counts")
  counts[["sequence"]] <- rownames(counts)

  sequence_barplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = sequence, y = Counts, fill = sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(sequence_barplot)
}
