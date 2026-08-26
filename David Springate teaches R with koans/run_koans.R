# Anthology runner added by ChatGPT / OpenAI, August 2026.
# David Springate wrote the koans under koans/.

library(testthat)

local_edition(3)

# Springate's 2017 koans use testthat's historical expectation DSL.
# Current testthat still exports most of that API, but no longer exports
# is_true(). This one-line compatibility definition preserves his original
# exercise files without pretending they were written in the modern syntax.
is_true <- function() testthat::equals(TRUE)

koan_order <- c(
  "what_is_true.R",
  "on_calculations.R",
  "on_vectors.R",
  "single_bracket_vector_subsetting.R",
  "on_lists.R",
  "on_apply_functions.R",
  "everything_is_a_function.R"
)

for (koan in koan_order) {
  test_file(file.path("koans", koan), env = environment())
}
