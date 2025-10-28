
#' T_to_U function
#' returns data with T bases transformed to U bases
#' 
#' @param data original data
#'
#' @export
#' 
T_to_U <- function(data){
  T_to_U_data <- gsub("T", "U", data)
  return(T_to_U_data)
}
