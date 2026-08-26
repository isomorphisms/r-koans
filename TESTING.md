# Testing convention

All executable collections in this anthology use **testthat edition 3** as the common testing convention.

That does not mean every historical source file is rewritten to look modern. Provenance comes first:

- **Colleen O'Briant** already used testthat edition 3 upstream, so her tests are preserved directly.
- **Patrick Cudahy** used testthat expectations in `advRkoans`; his complete three-koan set is adapted under `short/Patrick Cudahy/`. Deprecated `expect_reference()` calls are expressed with edition-3-compatible `expect_true(rlang::is_reference(...))` while the exercise idea remains Cudahy's.
- **David Springate** used an older testthat expectation DSL. His source files are preserved, while the anthology runner supplies the smallest compatibility shim needed to run them with current testthat.
- **Jenny Bryan / STAT 545** did not publish the joins cheatsheet as a koan test suite; the anthology adaptation uses modern testthat edition 3 expectations.

## Running a full collection

For an author folder with a runner, change into that folder and run:

```r
source("run_koans.R")
```

## Running the compact Cudahy set

Cudahy's set is only three exercises, so it does not need its own runner. From the repository root, run one directly:

```r
testthat::test_file("short/Patrick Cudahy/01_turn_claims_about_code_into_executable_checks.R")
```

or run the three files in filename order with whatever testthat workflow you already use.

These are teaching exercises. A failing expectation is often the intended starting state: replace the marked blanks until the koan passes.

The Patrick Burns and Hadley Wickham folders are currently source/reading maps rather than executable test suites, so they do not have runners.

Anthology testing convention and compatibility wrappers: **ChatGPT / OpenAI, August 2026**. Original exercises remain credited to their source authors.
