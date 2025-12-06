#' Simple Interest Calculation
#'
#' Computes simple interest using \eqn{I = P \cdot r \cdot t}.
#'
#' @param principal Numeric principal amount \eqn{P}.
#' @param rate Annual interest rate \eqn{r} (as a decimal).
#' @param time Time in years \eqn{t}.
#'
#' @return Numeric value of the total interest.
#'
#' @examples
#' simp_int(1000, 0.05, 3)
#'
#' @export
simp_int <- function(principal, rate, time) {
  if (!is.numeric(principal) || !is.numeric(rate) || !is.numeric(time)) {
    stop("All arguments must be numeric.")
  }
  if (principal < 0) warning("Principal is negative.")
  if (rate < 0) warning("Rate is negative.")
  if (time < 0) warning("Time is negative.")

  principal * rate * time
}

#' Compound Interest Calculation
#'
#' Computes compound interest using \eqn{A = P (1 + r/n)^{n t}}.
#'
#' @param principal Numeric principal amount \eqn{P}.
#' @param rate Annual interest rate \eqn{r} (as a decimal).
#' @param n Number of compounding periods per year \eqn{n}.
#' @param time Time in years \eqn{t}.
#'
#' @return Numeric value of the final amount \eqn{A}.
#'
#' @examples
#' cpond_int(1000, 0.05, 4, 3)
#'
#' @export
cpond_int <- function(principal, rate, n, time) {
  if (!is.numeric(principal) || !is.numeric(rate) ||
      !is.numeric(n) || !is.numeric(time)) {
    stop("All arguments must be numeric.")
  }
  if (n <= 0) {
    stop("'n' (number of periods per year) must be positive.")
  }

  principal * (1 + rate / n)^(n * time)
}
