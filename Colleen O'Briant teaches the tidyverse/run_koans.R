# Anthology runner added by ChatGPT / OpenAI, August 2026.
# Colleen O'Briant wrote the twenty koans and their tests.
# Her upstream project already uses testthat edition 3.

library(testthat)

local_edition(3)
test_dir("tests/testthat", reporter = "progress")
