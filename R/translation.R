#' Translation
#'
#' @param codons vector of codons to translate
#'
#' @returns chain of amino acids
#' @export
#'
#' @examples
translation <- function(codons){
              paste0(codon_table[codons], collapse = "")
  return(translation)
}