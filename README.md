SDS 390 Project: Simple Normal Regression Analysis
================
Audrey Bertin & Marium Tapal
Dec 17 2020

<!-- README.md is generated from README.Rmd. Please edit that file -->

# bayes-regression-report

This project provides a detailed analysis of a Bayesian Simple Normal
Regression just by providing a dataset and identifying the explanatory
variable and the response variable.

Steps to get the report:

1.  Clone and open this GitHub repository locally
2.  Run the all the code in the file `SNR_function.R`
3.  Load your dataset in your environment
4.  Identify explanatory varible `x` and response variable `y`
5.  Run the `snr()` function (see examples below)
6.  You will now have a file called `SNR_Template.html` that you can
    view from the files pane by clicking “View in Web Browser”

### Implementation of function(?)

### What parameters can you change?

Our analysis includes meaningful common defaults for the following
parameters. If you would like, you are able to change any or all of
parameters.

  - `n_chains`: Number of chains for the stan model with default of 4
    chains.
  - `n_iter`: Number of iterations for stan model with default of 10000.
    Note that half of these actually burned out.
  - `ci_pct`: The percentage for the Credible Interval - defaults to a
    95% CI.
  - `n_lines`: Number of lines for the plot of the potential regression
    lines determined by the model. Defualts to 1/4 of rows in dataset.
  - `posterior_prob`: Conditions for posterior probability calculations.
    Will only conduct calculations if any condition(s) are specified.
    Accepts a vector for multiple conditions.
  - `posterior_predict`: Values of the explanatory variable for
    posterior prediction. Will only conduct predictions if any value(s)
    are specified. Accepts a vector for multiple values.
  - `n_folds`: Number of folds for Cross Validation checks. Defaults to
    10 folds.

### Example 1: Bikes

### Example 2: Penguins
