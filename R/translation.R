#' Translation
#'
#' @param codons mRNA from codon_table
#'
#' @returns chain of amino acids
#' @export
#'
#' @examples
mrna <- function(codons){
  translation <- paste0(codon_table[codons], collapse = "")
  return(translation)
}