
# find packages on my computer
library(tidyverse)
packages <- data.frame(installed.packages(), stringsAsFactors = FALSE) %>%
  select(package = Package, version = Version) %>%
  write_csv("pkgs.csv") %>%
  glimpse()
