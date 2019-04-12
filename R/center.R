#' Center a vector around a specified value
#'
#' Take a *center* value and rearrange data points around it regarding the mean.
#'
#' @param data  The single-dimension, numeric data vector to center
#' @param center The numeric scalar around which the data shall be arranged, defaults to 0, named
#'
#' @return centered_data The centered numeric data set
#' @export
#'
#' @examples
#'   center(1:3)
#'   # with default center should result in [1] -1  0  1
#'   
#'   center(c(1, 2, 3), 10)
#'   # should result in [1]  9 10 11
center <- function(data,
                   ...,
                   center = 0) {
  centered_data <- (data - mean(data) + center)
  return(centered_data)
}
