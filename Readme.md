# MyIntroCalculations

A small R package that provides helper functions for basic arithmetic, percentages, averages, distances, interest calculations, and simple algebra.
It is designed for students learning introductory R and math concepts who want clear, defensively-programmed calculation functions.

# Installation

If the package is hosted on GitHub:

- install.packages("remotes")
remotes::install_github("MJDCuba/MyIntroCalculations")

Then load it:
library(MyIntroCalculations)

# Overview

MyIntroCalculations contains a collection of functions that simplify common numeric tasks such as:

-Adding, subtracting, multiplying, and dividing numbers

-Calculating averages and squares

-Computing Euclidean distances

-Percent change calculations

-Weighted means

-Simple and compound interest

-Solving one-variable linear equations

All functions include basic input validation (numeric checks, length checks, division-by-zero checks) to help prevent common errors and make messages more informative.

A full demonstration of the package is available in the included vignette:

vignette("MyIntroCalculations-demo")

# Functions Included:

-Category------------Functions

-Arithmetic----------add_num(), sub_num(), mult_num(), div_num()

-Summary statistics-calc_av(), sqr_num()

-Geometry-----------dist_2d()

-Percent change-----perc_chg()

-Weighted mean------wei_mn_calc()

-Finance------------simp_int(), cpond_int()

-Algebra------------solv_lin()

# Defensive Programming

Many functions include checks such as:

-Ensuring inputs are numeric
-Ensuring vectors have matching lengths when required
-Preventing division by zero
-Warning when values fall outside expected conditions

# DESCRIPTION Metadata Summary

These fields are included in the DESCRIPTION file:

-Package: MyIntroCalculations

-Title: Introductory Calculation Helpers for Everyday Math and Simple Algebra

-Version: 0.0.0.9000

-Authors@R: author/creator listed

-Description: one-paragraph overview

-Depends: R (>= 3.6.0)

-Imports: (none) — uses only base R

-License: MIT + file LICENSE

-Encoding: UTF-8

-Roxygen / RoxygenNote: for documentation

-URL: GitHub repo URL

-BugReports: GitHub Issues URL

# License
This package uses the MIT License, a permissive open-source license that allows reuse with minimal restriction.

# Object Systems Used (S3 vs. S4)
This package focuses on simple functional helpers and does not implement S3 or S4 classes.

# Vignette
A demonstration vignette is included:
vignettes/MyIntroCalculations-demo.Rmd

It shows:

-Examples of key functions
-Math expressions using LaTeX
-Explanations of the formulas used
-Reflections on the reproducible workflow (Module 12 requirement)

1. Overall introduction of the package
-MyIntroCalculations provides a set of simple helper functions designed to make basic numeric calculations easier for beginning R users. 
The focus is on clear behavior, defensive programming, and introductory math concepts.

2. How many unique functions does the package provide?
-The package currently provides 11 functions across arithmetic, percentages, averages, distances, interest calculations, and simple algebra.

3. How many external libraries does the package use?
-None. The package relies entirely on base R, keeping dependencies minimal and simple.

4. What metadata fields are included in DESCRIPTION?
-Fields include: Package, Title, Version, Authors@R, Description, Depends, Imports, License, LazyData, Encoding, Roxygen, RoxygenNote, URL, BugReports.

5. What license does the package use?
-The package uses the MIT License, a permissive open-source license.

6. Which object systems (S3 vs. S4) are implemented?
-This package does not currently implement S3 or S4 object systems, as the functions are straightforward and do not require specialized class structures.

# Acknowledgments# 

Created as part of an R programming course project covering:

-Package structure and metadata (Module 10)
-Debugging and defensive programming (Module 11)
-R Markdown and reproducible documents (Module 12)
