#' Normalize a data set
#'
#' @param v The numeric, single-dimension vector which should be normalized
#' @param ... any other paramter
#' @param low The scalar lower bound for normalization
#' @param high The scalar upper bound for normalization
#'
#' @return The normalized version of `v`
#' @export
#'
#' @examples
#' rescale(c(0, 1, 2, 3, 4), low = 2, high = 10)
#' # should result in [1]  2  4  6  8 10
#'
#' rescale(c(0, 1, 2, 3, 4))
#' # should result in [1] 0.00 0.25 0.50 0.75 1.00
rescale <- function(v, ..., low = 0, high = 1) {
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L) * (high - low) + low
  return(result)
}
