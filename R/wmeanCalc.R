#' Compute a Weighted Mean
#'
#' A simple wrapper to compute a weighted average of numeric values.
#'
#' @param values A numeric vector of values.
#' @param weights A numeric vector of weights (same length as \code{values}).
#'
#' @return A single numeric value: the weighted mean.
#'
#' @examples
#' wei_mn_calc(c(70, 80, 90), c(1, 2, 3))
#'
#' @export
wei_mn_calc <- function(values, weights) {
  if (!is.numeric(values) || !is.numeric(weights)) {
    stop("'values' and 'weights' must both be numeric vectors.")
  }
  if (length(values) != length(weights)) {
    stop("'values' and 'weights' must have the same length.")
  }
  if (length(values) == 0) {
    stop("'values' and 'weights' cannot be empty.")
  }
  if (any(weights < 0)) {
    warning("Some weights are negative.")
  }

  sum(values * weights) / sum(weights)
}
