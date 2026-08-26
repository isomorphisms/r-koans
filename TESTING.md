# Testing convention

All executable collections in this anthology use **testthat edition 3** as the common runner.

That does not mean historical source files are rewritten to look modern. Provenance comes first:

- **Colleen O'Briant** already used testthat edition 3 upstream, so her tests are preserved directly.
- **Patrick Cudahy** used testthat expectations in `advRkoans`; his original koans are preserved and run under edition 3. Some expectations are now deprecated by testthat, but remain available.
- **David Springate** used an older testthat expectation DSL. His source files are preserved, while the anthology runner supplies the smallest compatibility shim needed to run them with current testthat.
- **Jenny Bryan / STAT 545** did not publish the joins cheatsheet as a koan test suite; the anthology adaptation uses modern testthat edition 3 expectations.

## Running a collection

Change into the author folder and run:

```r
source("run_koans.R")
```

These are teaching exercises. A failing expectation is often the intended starting state: replace the marked blanks until the koan passes.

The Patrick Burns and Hadley Wickham folders are currently source/reading maps rather than executable test suites, so they do not have runners.

Anthology testing convention and compatibility wrappers: **ChatGPT / OpenAI, August 2026**. Original exercises remain credited in their source folders.
