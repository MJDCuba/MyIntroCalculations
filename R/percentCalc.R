#' Calculate Percent Change
#'
#' This function computes the percent change from an old value to a new value,
#' using the formula \code{(new - old) / old * 100}.
#'
#' @param old A numeric value (or vector) representing the original amount.
#' @param new A numeric value (or vector) representing the new amount.
#'
#' @return A numeric value (or vector) of percent changes.
#' @examples
#' perc_chg(100, 120)   # 20% increase
#' perc_chg(c(50, 80), c(75, 40))
#'
#' @export
perc_chg <- function(old, new) {
  # Defensive checks
  if (!is.numeric(old) || !is.numeric(new)) {
    stop("'old' and 'new' must both be numeric.")
  }
  if (length(old) != length(new)) {
    stop("'old' and 'new' must have the same length.")
  }
  if (any(old == 0)) {
    stop("Cannot compute percent change when 'old' is zero.")
  }

  ((new - old) / old) * 100
}
