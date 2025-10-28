split_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(
    sequence,
    first = seq(from = start, to = seq_length - 2, by = 3),
    last  = seq(from = start + 2, to = seq_length, by = 3)
  )
  return(codons)
}
