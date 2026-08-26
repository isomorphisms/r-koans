# Anthology runner added by ChatGPT / OpenAI, August 2026.
# Patrick Cudahy wrote the koans under koans/.

library(testthat)
library(lobstr)
library(magrittr)
library(purrr)

local_edition(3)

koan_files <- list.files(
  "koans",
  pattern = "\\.R$",
  full.names = TRUE
)

walk(sort(koan_files), test_file)
