library(magrittr)
library(fs)
library(rmarkdown)

knit_2_dir <- function(file = most_recent('rmd'), out_dir = 'outputs') {

  render(file, output_dir = out_dir)

}


most_recent <- function(dir) {

  times <- dir_info(dir)$modification_time %>%
    sort()

  most_recent_ind <- length(times)

  dir_ls(dir)[most_recent_ind]

}
