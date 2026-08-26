# Derived in August 2026 from Jenny Bryan / STAT 545, "Join two tables".
# Source: https://github.com/rstudio-education/stat545/blob/master/15_join-tibbles.Rmd
# License: CC BY-SA 4.0. See ../LICENSE.md and ../README.md.
#
# The source uses these deliberately tiny tables so you can see what a join
# does to both rows and columns. Replace each `__` until the expectations pass.

library(testthat)
library(dplyr)
library(tibble)

superheroes <- tribble(
       ~name, ~alignment,  ~gender,          ~publisher,
   "Magneto",      "bad",   "male",            "Marvel",
     "Storm",     "good", "female",            "Marvel",
  "Mystique",      "bad", "female",            "Marvel",
    "Batman",     "good",   "male",                "DC",
     "Joker",      "bad",   "male",                "DC",
  "Catwoman",      "bad", "female",                "DC",
   "Hellboy",     "good",   "male", "Dark Horse Comics"
)

publishers <- tribble(
  ~publisher, ~yr_founded,
        "DC",       1934L,
    "Marvel",       1939L,
     "Image",       1992L
)

test_that("inner_join keeps matching superheroes and adds publisher data", {
  joined <- inner_join(superheroes, publishers, by = "publisher")

  expect_equal(nrow(joined), `__`)
  expect_equal(ncol(joined), `__`)
  expect_false(`__` %in% joined$name)
})

test_that("semi_join filters x without adding columns from y", {
  joined <- semi_join(superheroes, publishers, by = "publisher")

  expect_equal(nrow(joined), `__`)
  expect_equal(names(joined), `__`)
  expect_false("Hellboy" %in% joined$name)
})

test_that("left_join keeps every superhero", {
  joined <- left_join(superheroes, publishers, by = "publisher")
  hellboy <- filter(joined, name == "Hellboy")

  expect_equal(nrow(joined), `__`)
  expect_true(is.na(hellboy$`__`))
})

test_that("anti_join reveals the unmatched superhero", {
  joined <- anti_join(superheroes, publishers, by = "publisher")

  expect_equal(joined$name, `__`)
  expect_equal(joined$publisher, `__`)
})

test_that("reversing x and y changes a semi join", {
  joined <- semi_join(publishers, superheroes, by = "publisher")

  expect_equal(sort(joined$publisher), sort(`__`))
  expect_false(`__` %in% joined$publisher)
})

test_that("reversing x and y changes a left join", {
  joined <- left_join(publishers, superheroes, by = "publisher")
  image <- filter(joined, publisher == "Image")

  expect_equal(nrow(joined), `__`)
  expect_true(is.na(image$`__`))
})

test_that("full_join keeps unmatched rows from both tables", {
  joined <- full_join(superheroes, publishers, by = "publisher")

  expect_equal(nrow(joined), `__`)
  expect_true("Hellboy" %in% joined$name)
  expect_true("Image" %in% joined$publisher)
})
