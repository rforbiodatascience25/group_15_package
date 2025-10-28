#' Translation
#'
#' @param codons character vector of codons to translate
#'
#' @returns chain of amino acids
#' @export
#'
#' @examples
#' codon_table <- c("AUG" = "M", "UUU" = "F", "GGC" = "G")
#' translation(c("AUG","GGC","UUU"))
translation <- function(codons) {
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}