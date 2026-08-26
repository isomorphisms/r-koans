# Patrick Cudahy's advRkoans, adapted for this anthology.
# Copyright (c) 2020 Patrick Cudahy. MIT licensed; see LICENSE.md.
# Original: https://github.com/pgcudahy/advRkoans
#
# Why this matters:
# A test turns a claim about what code should do into something the computer can
# check. Once that claim is executable, you can change, refactor, or translate
# code and immediately find out whether the behavior you cared about survived.


testthat::local_edition(3)


testthat::test_that("a claim can be checked as true", {
    testthat::expect_true(`___`)
})


testthat::test_that("a failed claim can explain what went wrong", {
    testthat::expect_true(`___`, "This should be True -- Please fix this")
})


testthat::test_that("an expected value can be compared with a calculation", {
    testthat::expect_equal(`__`, 1 + 1)
})


testthat::test_that("equality makes the intended result explicit", {
    expected_value <- 2
    actual_value <- 1 + 1

    testthat::expect_true(`__` == actual_value)
})


testthat::test_that("expect_equal states the comparison directly", {
    expected_value <- 2
    actual_value <- 1 + 1

    testthat::expect_equal(`__`, actual_value)
})
