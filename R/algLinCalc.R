#' Solve a Simple Linear Equation
#'
#' Solves the equation \eqn{a x + b = 0} for \eqn{x}, assuming \eqn{a != 0}.
#'
#' @param a Numeric coefficient for \eqn{x}.
#' @param b Numeric intercept term.
#'
#' @return A single numeric value giving the solution for \eqn{x}.
#'
#' @examples
#' solv_lin(2, -4)  # x = 2
#'
#' @export
solv_lin <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("'a' and 'b' must be numeric.")
  }
  if (length(a) != 1 || length(b) != 1) {
    stop("'a' and 'b' should be single numeric values, not vectors.")
  }
  if (a == 0) {
    stop("Cannot solve when 'a' is zero (no unique solution).")
  }

  -b / a
}
