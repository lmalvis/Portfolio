
############# Install Packages for R Regression Tutorial ##################

# List of required packages
packages <- c(
  "rio", "plyr", "dplyr", "tidyverse", "janitor",
  "ggplot2", "corrplot",
  "arsenal", "knitr", "gt", "flextable", "officer",
  "bayestestR", "rstanarm", "bayesplot", "sjPlot", "lm.beta", "jtools"
)

# Install any packages not already installed, with dependencies
installed <- packages %in% rownames(installed.packages())
if (any(!installed)) {
  install.packages(packages[!installed], dependencies = TRUE)
}

## You can also install rmarkdown to create dynamic documents that combine 
## code, text, and rendered output in R.  

install.packages("rmarkdown", dependencies = TRUE)

## If you want to generate PDF output from rmarkdown, you will also need to 
## install LaTeX.  

install.packages('tinytex')
tinytex::install_tinytex() 