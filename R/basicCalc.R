# Simple Calculation Functions
# These functions handle everyday numeric operations with
# clear inputs, outputs, and defensive checks.

#' Add Two Numbers
#'
#' Computes the sum of two numeric values.
#'
#' @param x A numeric value.
#' @param y A numeric value.
#'
#' @return A numeric value representing \code{x + y}.
#'
#' @examples
#' add_num(3, 5)
#'
#' @export
add_num <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("'x' and 'y' must both be numeric.")
  }
  x + y
}



#' Subtract Two Numbers
#'
#' Computes the difference \code{x - y}.
#'
#' @param x A numeric value.
#' @param y A numeric value.
#'
#' @return Numeric difference of \code{x - y}.
#'
#' @examples
#' sub_num(10, 3)
#'
#' @export
sub_num <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("'x' and 'y' must both be numeric.")
  }
  x - y
}




#' Multiply Two Numbers
#'
#' Computes the product of two numeric inputs.
#'
#' @param x Numeric.
#' @param y Numeric.
#'
#' @return Numeric product.
#'
#' @examples
#' mult_num(4, 6)
#'
#' @export
mult_num <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("'x' and 'y' must both be numeric.")
  }
  x * y
}




#' Divide Two Numbers Safely
#'
#' Performs division with a check for division by zero.
#'
#' @param numerator Numeric.
#' @param denominator Numeric.
#'
#' @return Numeric quotient.
#'
#' @examples
#' div_num(10, 2)
#'
#' # This will throw an error:
#' # div_num(5, 0)
#'
#' @export
div_num <- function(numerator, denominator) {
  if (!is.numeric(numerator) || !is.numeric(denominator)) {
    stop("'numerator' and 'denominator' must be numeric.")
  }
  if (denominator == 0) {
    stop("Cannot divide by zero.")
  }
  numerator / denominator
}


#' Average of a Numeric Vector
#'
#' Computes the arithmetic mean of a numeric vector with input checks.
#'
#' @param x A numeric vector.
#'
#' @return Numeric mean.
#'
#' @examples
#' calc_av(c(10, 20, 30, 40))
#'
#' @export
calc_av <- function(x) {
  if (!is.numeric(x)) {
    stop("'x' must be a numeric vector.")
  }
  if (length(x) == 0) {
    stop("'x' cannot be empty.")
  }
  mean(x)
}



#' Square a Number
#'
#' Computes \code{x^2}.
#'
#' @param x Numeric.
#'
#' @return Numeric square of \code{x}.
#'
#' @examples
#' sqr_num(7)
#'
#' @export
sqr_num <- function(x) {
  if (!is.numeric(x)) {
    stop("'x' must be numeric.")
  }
  x * x
}




#' Calculate Distance Between Two Points
#'
#' Computes Euclidean distance between points \eqn{(x1, y1)} and \eqn{(x2, y2)}.
#'
#' @param x1,x2 Numeric x-coordinates.
#' @param y1,y2 Numeric y-coordinates.
#'
#' @return Numeric distance.
#'
#' @examples
#' dist_2d(0, 3, 0, 4)  # returns 5
#'
#' @export
dist_2d <- function(x1, x2, y1, y2) {
  if (!is.numeric(x1) || !is.numeric(x2) ||
      !is.numeric(y1) || !is.numeric(y2)) {
    stop("All coordinates must be numeric.")
  }
  sqrt((x2 - x1)^2 + (y2 - y1)^2)
}
