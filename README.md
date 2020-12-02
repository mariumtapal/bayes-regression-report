SDS 390 Project: Simple Normal Regression Analysis
================
Audrey Bertin & Marium Tapal
Dec 17 2020

<!-- README.md is generated from README.Rmd. Please edit that file -->
# bayes-regression-report

This project attempts to automate and greatly simplify the process of conducting a Bayesian Simple Normal Regression in R, allowing users to generate an entire customized analysis--including information such as model quality, proposed regression lines, posterior predictions, and more--using only a single line of code.

## Dependencies

In order for the regression report to function properly, users must first ensure that the following packages are installed in their RStudio:

Available on CRAN:

-   `tidyverse`
-   `rstanarm`
-   `bayesplot`
-   `reshape2`
-   `janitor`
-   `kableExtra`

Available on GitHub:

-   `bayesrules` ("mdogucu/bayesrules")

The following code can be used to install all of the dependencies at once.

``` r

# install.packages("remotes") ---- if you do not already have this package installed

install.packages(c("tidyverse", "rstanarm", "bayesplot", "reshape2", "janitor", "kableExtra"))

remotes::install_github("mdogucu/bayesrules")
```

## Report Features

The report created by the `snr()` function contains a variety of different sections summarizing different aspects of the provided model. These are:

1.  **Analysis Inputs:** summary of the inputs provided for the report
2.  **Plot of X & Y:** a scatterplot of the `x` and `y` variables
3.  **Defining The Stan Model:** a code snippet showing the code for creating the model
4.  **Visual Diagnostics:** trace plots and chain density overlay plots to check the quality of the model
5.  **Posterior Summary Statistics and Mathematical Diagnostics:** mean regression equation provided by the model, plus some mathematical (non-visual) diagnostics--number of effective iterations and variability across vs. within chains--to further check model quality.
6.  **Credible Intervals:** this section shows credible intervals (of specified level) for each of the main parameters of interest-- intercept, slope, and deviation.
7.  **Plot of Potential Regression Lines Determined By Model:** visual plot showing a sample of regression lines found in the `stan` model on top of the original data.
8.  **Posterior Probability of Calculated Slope:** the probability of the true posterior slope being in the direction it was found to be by the model (e.g. if the calculated slope is positive, the probability that the true slope is positive. If the calculated slope is negative, the probability that the true slope is negative.) This provides a sort of hypothesis test for the model.
9.  **Evaluating Prediction Quality:** this section considers three different methods (two visual and one mathematical) to help analyze the quality of predictions that can be produced by the calculated model.

## Operating the Report

Once all of the required dependencies are installed, take the following steps to install the report software:

1.  Clone and open this GitHub repository locally.
2.  Run the all the code in the file `SNR_function.R`.
3.  Load your dataset in your environment.
4.  Identify the explanatory varible `x` and response variable `y` that you would like to use.
5.  Run the `snr()` function (see examples below) and specify your desired parameters.
6.  After the function finishes executing, an HTML file should appear. It will be named according to the data and x/y variables that were called in `snr()`. To open this file, click on it and select `View in Web Browser`.

## Customizing the Report Output

The `snr()` function is highly customizable, containing the following user-specifiable parameters:

#### Parameters Which MUST Be Specified

-   `data`: the dataset to be used in the analysis. In order for `snr()` to execute properly, this dataset must be saved as an R object.
-   `x`: the x variable to use. Should be a numeric variable. (enter as a character string, e.g. "age")
-   `y`: the y variable to use. Should be a numeric variable. (enter as a character string, e.g. "height")

#### Optional Parameters

-   `n_chains`: Number of chains to use in the stan model (DEFAULT: 4 Chains).
-   `n_iter`: Number of iterations to use in the stan model (DEFAULT: 5000 Iterations).
-   `ci_pct`: The certainty level to use when creating Credible Intervals for the parameters of interest--intercept, slope, and deviation--entered as a decimal (DEFAULT: 0.95 (95%)).
-   `n_lines`: Number of proposed regression lines determined by the model to visualize. (DEFAULT: 1/4 the number of rows in provided dataset.)
-   `posterior_predict`: Values of the `x` variable to use for posterior prediction of `y`. Accepts a vector for multiple values. (DEFAULT: An empty vector. No predictions are made unless specified by the user).
-   `n_folds`: Number of folds for Cross Validation checks (DEFAULT: 10 Folds).

## Example Uses

#### Example 1: Predicting Bikeshare Ridership Based on Temperature

#### Example 2: Predicting Penguin Body Mass Based on Flipper Length

#### Example 3: Predicting Penguin Bill Depth Based on Bill Length (Using Too Few Model Iterations)
