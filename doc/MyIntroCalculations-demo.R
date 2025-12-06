## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load package-------------------------------------------------------------
# If the package is not yet installed from GitHub, you would use:
# remotes::install_github("MJDCuba/MyIntroCalculations")

library(MyIntroCalculations)

## ----simple calculation-------------------------------------------------------
# Add, subtract, multiply, and divide

add_num(3, 5)
sub_num(10, 4)
mult_result <- mult_num(6, 7)
div_result <- div_num(20, 4)

mult_result
div_result

## ----average calculaton-------------------------------------------------------
# Compute the average of a numeric vector

values <- c(10, 20, 30, 40)
avg <- calc_av(values)
avg

## ----square calculation-------------------------------------------------------
# Square a number

sqr_num(7)

# Distance between (0, 0) and (3, 4)

dist_2d(x1 = 0, x2 = 3, y1 = 0, y2 = 4)

## ----percent change-----------------------------------------------------------
old_values <- c(100, 80, 50)
new_values <- c(120, 60, 55)

perc_chg(old_values, new_values)

## ----weighted mean------------------------------------------------------------
scores <- c(70, 80, 90)
weights <- c(1, 2, 3)

wei_mn_calc(scores, weights)

## ----principle calculation----------------------------------------------------

simp_int(principal = 1000, rate = 0.05, time = 3)


## ----compound calculation-----------------------------------------------------

cpond_int(principal = 1000, rate = 0.05, n = 4, time = 3)


## ----linear solution----------------------------------------------------------

solv_lin(a = 2, b = -4) # expects x = 2


