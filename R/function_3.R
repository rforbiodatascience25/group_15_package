#' Split a nucleotide sequence into codons
#'
#' Takes a DNA or RNA sequence as a character string and returns a vector
#' of codons (groups of three bases) based on a specified reading frame.
#'
#' @param sequence A character string representing a nucleotide sequence.
#'                 Should contain only A, T/U, C, or G characters.
#' @param start A numeric value giving the position in the sequence
#'              where the reading frame begins. Defaults to 1.
#'
#' @return A character vector of codons extracted from the input sequence.
#'         Codons are returned left-to-right based on the specified frame.
#' @export
#'
#' @examples
#' split_codons("ATGCGTACG")
#' split_codons("ATGCGTACG", start = 2)

split_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(
    sequence,
    first = seq(from = start, to = seq_length - 2, by = 3),
    last  = seq(from = start + 2, to = seq_length, by = 3)
  )
  return(codons)
}
