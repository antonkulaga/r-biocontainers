to_install <- c(
  "devtools", #Dev tools installer
  "tidyverse", # The tidyverse is an opinionated collection of R packages designed for data science.
  "shiny", #web
  "here",
  "rstudioapi",
  "caret",
  "plotly", #charts
  "optigrab", "optparse", "docopt" #for CLI
)
install.packages(to_install, dependencies = TRUE)