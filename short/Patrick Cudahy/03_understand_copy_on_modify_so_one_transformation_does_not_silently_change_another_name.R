# Patrick Cudahy's advRkoans, adapted for this anthology.
# Copyright (c) 2020 Patrick Cudahy. MIT licensed; see LICENSE.md.
# Original: https://github.com/pgcudahy/advRkoans
#
# Why this matters:
# R can let two names share one object until one path modifies it. Copy-on-modify
# is what lets you write x2 <- x and then transform x2 without silently changing
# x. Knowing when copies happen also helps explain memory use and performance.


testthat::local_edition(3)


testthat::test_that("modifying one binding separates it from the old object", {
    x <- c(1, 2, 3)
    y <- x

    y[[3]] <- 4

    testthat::expect_false(`___` == lobstr::obj_addr(x))
})


testthat::test_that("tracemem shows when an object is copied", {
    x <- c(1, 2, 3)
    tracemem(x)

    y <- x

    testthat::expect_output(y[[3]] <- 4L, `___`)
    testthat::expect_output(y[[3]] <- 5L, `___`)

    untracemem(x)
})


testthat::test_that("unnamed temporary objects have no later binding to protect", {
    tracemem(1:10)
    testthat::expect_output(1:10 * 2, `___`)
    untracemem(1:10)
})


testthat::test_that("changing a vector element can trigger one or more copies", {
    x <- 1:3
    tracemem(x)

    output1 <- capture.output(x[[3]] <- 5L)
    testthat::expect_length(output1, `___`)

    x <- 1:3
    tracemem(x)
    output2 <- capture.output(x[[3]] <- 4.4)
    testthat::expect_length(output2, `___`)

    untracemem(x)
})


testthat::test_that("a function need not copy an argument unless it modifies it", {
    f <- function(a) {
        a
    }

    x <- c(1, 2, 3)
    tracemem(x)

    testthat::expect_output(y <- f(x), `___`)

    f2 <- function(a) {
        a[[3]] <- 55
        a
    }

    testthat::expect_output(z <- f2(x), `___`)

    untracemem(x)
})


testthat::test_that("changing one list element need not copy the other values", {
    list1 <- list(1, 2, 3)
    element1_address <- lobstr::obj_addrs(list1)[[1]]
    element2_address <- lobstr::obj_addrs(list1)[[2]]

    list1[[2]] <- 4
    new_element1_address <- lobstr::obj_addrs(list1)[[1]]
    new_element2_address <- lobstr::obj_addrs(list1)[[2]]

    testthat::expect_true(`___` == element1_address)
    testthat::expect_false(`___` == element2_address)
})


testthat::test_that("lists make shallow copies", {
    list1 <- list(1, 2, 3)
    list2 <- list1
    list2[[3]] <- 4

    list1_element1_address <- lobstr::obj_addrs(list1)[[1]]
    list1_element2_address <- lobstr::obj_addrs(list1)[[2]]
    list1_element3_address <- lobstr::obj_addrs(list1)[[3]]

    list2_element1_address <- lobstr::obj_addrs(list2)[[1]]
    list2_element2_address <- lobstr::obj_addrs(list2)[[2]]
    list2_element3_address <- lobstr::obj_addrs(list2)[[3]]

    testthat::expect_true(`___` == list1_element1_address)
    testthat::expect_true(`___` == list1_element2_address)
    testthat::expect_false(`___` == list1_element3_address)
})


testthat::test_that("nested lists can share the same underlying values", {
    a <- 1:10
    b <- list(a, a)
    c <- list(b, a, 1:10)

    testthat::expect_true(rlang::is_reference(`___`, a))
    testthat::expect_true(rlang::is_reference(`___`, a))
    testthat::expect_true(rlang::is_reference(`___`, b))
})


testthat::test_that("a list can contain a reference to its earlier value", {
    x <- list(1:10)
    x_ref <- lobstr::obj_addrs(x)

    x[[2]] <- x

    testthat::expect_equal(lobstr::obj_addrs(`___`), x_ref)
})


testthat::test_that("data-frame copies happen at the columns that change", {
    d1 <- data.frame(x = c(1, 5, 6), y = c(2, 4, 3))
    d2 <- d1

    d2$y <- d2$y * 2

    testthat::expect_true(rlang::is_reference(`___`, d1$x))
    testthat::expect_false(`___` == lobstr::obj_addr(d1$y))

    d3 <- d1
    d3[1, ] <- d3[1, ] * 3

    testthat::expect_equal(`___`, unname(lobstr::ref(d1) == lobstr::ref(d3)))
})


testthat::test_that("character vectors can share strings from the global string pool", {
    x <- c("a", "a", "abc", "d")
    y <- c("abc", "a")

    testthat::expect_equal(`___`, lobstr::obj_addrs(x)[1])
    testthat::expect_equal(`___`, lobstr::obj_addrs(x)[3])
})
