
## https://www.tidyverse.org/articles/2017/12/workflow-vs-script/
## Clears Everything...start fresh.
## rm(list=ls(all=T));cat("\014");dev.off()


# -------------------------------------------------------------------------
# https://johnmuschelli.com/smi_2019/index.html#78
## To build the package
library(roxygen2)
library(roxygen2md)
library(pkgdown)

## Process a package
roxygen2::roxygenise()

## Convert from Rd to Markdown
roxygen2md::roxygen2md()


devtools::document()

#devtools::test(); # makes testthat directory and runs tests


# devtools::check()


##
# devtools::check_rhub()

# NEWs file
# usethis::use_news_md()

## Builds package down webpage
pkgdown::build_site()

## Builds package
# devtools::build(vignettes=F)
# devtools::build()

# -------------------------------------------------------------------------
