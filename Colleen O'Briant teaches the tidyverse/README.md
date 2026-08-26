# Colleen O'Briant teaches the tidyverse

## What is the tidyverse?

The **tidyverse** is a family of R packages built around a common style for working with data: importing it, reshaping it, querying it, plotting it, and applying functions to it. Packages such as `dplyr`, `tibble`, `ggplot2`, and `purrr` are designed to fit together.

The motivation is practical: a small, consistent vocabulary lets you move from a question about data to readable R code without learning a different style for every step.

## These exercises

**Colleen O'Briant designed these koans.** She wrote them as a gentle introduction to R and the tidyverse for economists and other applied researchers, originally for an upper-level econometrics course. The twenty exercises get gradually harder and are intended to be worked roughly in order, because later exercises build on ideas introduced earlier.

O'Briant's original project describes koans as fill-in-the-blank exercises with fast test feedback. Her sequence moves from vectors and tibbles through `dplyr`, joins, `ggplot2`, regression and distributions, functions, `purrr::map()`, lags, first differences, `reduce()`, and `accumulate()`.

Original project: <https://github.com/cobriant/tidyverse_koans>

## Credit and reformatting

The ideas, exercise design, teaching sequence, and original material in this folder are due to **Colleen O'Briant**.

In **August 2026**, **ChatGPT / OpenAI** reformatted the material for the `isomorphisms/r-koans` anthology and a uniform **testthat edition 3** testing convention. Colleen O'Briant's own repository already used testthat edition 3, so the testing changes are intentionally minimal.

Reformatting is not authorship. Files copied or adapted from O'Briant remain credited to her, and the original license is retained in this folder.

## How to work the koans

Open an exercise in `koans/`, fill in the marked answers, and run its corresponding test file. Incomplete answers are skipped; completed answers either pass or show you where your current model is wrong.

The sequence is progressive, but nothing prevents you from opening a later koan if that is the topic you need.
