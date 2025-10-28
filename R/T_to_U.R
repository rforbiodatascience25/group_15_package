#' T to U
#'
#' @param data 
#' original data 
#'
#' @returns
#' returns data with T bases transformed to U bases
#' @export
#'
#'
#' 
T_to_U <- function(data){
  T_to_U_data <- gsub("T", "U", data)
  return(T_to_U_data)
}
