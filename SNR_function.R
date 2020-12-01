# Function to run the Simple Normal Regression template

snr <- function(data,
                x,
                y,
                n_chains = 4,
                n_iter = 10000,
                ci_pct = 95,
                n_lines = 0,
                pred = c(),
                n_folds = 10){
  
  rmarkdown::render("SNR_Template.Rmd", params = list(
    data = data,
    x = x,
    y = y,
    n_chains = n_chains,
    n_iter = n_iter,
    n_lines = n_lines,
    pred = pred,
    n_folds = n_folds
  ),
  output_file = paste0("SNR_Results_", deparse(substitute(data)), "_", x, "_", y, ".html"))
}
