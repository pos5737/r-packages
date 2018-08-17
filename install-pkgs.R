
# install packages
library(tidyverse)
pkgs_df <- read_csv("pkgs.csv") %>%
  glimpse()

# install packages not found
packages <- pkgs_df$package
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}
