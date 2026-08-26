# Patrick Cudahy's advRkoans, adapted for this anthology.
# Copyright (c) 2020 Patrick Cudahy. MIT licensed; see LICENSE.md.
# Original: https://github.com/pgcudahy/advRkoans
#
# Why this matters:
# A binding gives a value a name you can reuse, pass around, inspect, and compare.
# Understanding the difference between a name and the object it refers to lets
# you tell when two names refer to the same thing, when identity matters, and
# when a later change will require a copy.


testthat::local_edition(3)


testthat::test_that("a name is bound to a value", {
    x <- c(1, 2, 3)

    testthat::expect_equal(`__`, x)
})


testthat::test_that("two names can refer to the same existing object", {
    x <- c(1, 2, 3)
    y <- x

    testthat::expect_true(rlang::is_reference(`___`, x))
})


testthat::test_that("equal values need not be the same object", {
    a <- 1:10
    b <- a
    c <- b
    d <- 1:10

    testthat::expect_equal(`__`, a)
    testthat::expect_equal(`__`, a)
    testthat::expect_equal(`__`, a)
    testthat::expect_true(rlang::is_reference(`__`, a))
    testthat::expect_true(rlang::is_reference(`__`, a))
    testthat::expect_false(`__` == lobstr::obj_addr(a))
})


testthat::test_that("different ways of finding a function can reach the same object", {
    mean_functions <- list(
        mean,
        base::mean,
        get("mean"),
        evalq(mean),
        match.fun("mean")
    )

    testthat::expect_equal(
        `__`,
        lobstr::obj_addrs(mean_functions) |> unique() |> length()
    )
})


testthat::test_that("ordinary names follow syntactic rules", {
    testthat::expect_error(eval(parse(text = "_abc <- 1")), `__`)
    testthat::expect_error(eval(parse(text = "if <- 10")), `__`)
    testthat::expect_error(eval(parse(text = ".123e1 <- 1")), `__`)
})


testthat::test_that("backticks let you bind non-syntactic names", {
    `_abc` <- 1
    `if` <- 10

    testthat::expect_equal(`__`, 1)
    testthat::expect_equal(`__`, 10)
})


testthat::test_that("quoted names need an explicit lookup", {
    "_abc" <- 5
    "if" <- 50

    testthat::expect_equal(`__`, 5)
    testthat::expect_equal(`__`, 50)
})


testthat::test_that("make.names changes awkward imported names", {
    blank_name <- make.names("")
    testthat::expect_equal(`__`, blank_name)

    non_valid_name <- make.names("A@")
    testthat::expect_equal(`__`, non_valid_name)

    keyword_name <- make.names("if")
    testthat::expect_equal(`__`, keyword_name)

    df <- data.frame("if" = c(1, 2, 3))
    df2 <- data.frame("if" = c(1, 2, 3), check.names = FALSE)

    testthat::expect_equal(`__`, names(df))
    testthat::expect_equal(`__`, names(df2))
})
