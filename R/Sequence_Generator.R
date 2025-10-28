#' Random DNA Sequence Generator
#'
#' @param length the length of the DNA sequence
#'
#' @returns a random sequence of DNA as a string
#' @export
#'
#' @examples ACGTTTCGAGT
generate_dna_sequence <- function(length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(nucleotides, collapse = "")
  return(sequence)
}