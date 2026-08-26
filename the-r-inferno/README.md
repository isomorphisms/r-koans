# The R Inferno

**The R Inferno** is Patrick Burns's guide to common R programming traps, surprising behavior, performance mistakes, and debugging habits. Burns describes it as a map for people who are using R and feel like they are in hell.

This repository does not reproduce the book. The original work and credit belong to **Patrick Burns**.

- [The R Inferno — free PDF on Burns Statistics](https://www.burns-stat.com/pages/Tutor/R_inferno.pdf)
- [The R Inferno — Burns Statistics book page](https://www.burns-stat.com/documents/books/the-r-inferno/)

## Chapters / circles

1. **Falling into the Floating Point Trap** — floating-point representation, numerical equality, and numerical error.
2. **Growing Objects** — the cost of repeatedly enlarging objects instead of allocating or constructing them efficiently.
3. **Failing to Vectorize** — avoiding unnecessary loops and using R's vectorized operations, subscripting, and vectorized conditionals.
4. **Over-Vectorizing** — cases where forcing a vectorized solution makes code slower, harder to understand, or otherwise worse.
5. **Not Writing Functions** — abstraction, simplicity, consistency, and why repeated code should become functions.
6. **Doing Global Assignments** — the hazards of changing state outside the local scope of a computation.
7. **Tripping on Object Orientation** — S3 methods, S4 methods, inheritance, multiple dispatch, and namespaces.
8. **Believing It Does as Intended** — R behaviors that are easy to misread or assume incorrectly, including coercion, matching, subscripting, factors, missing values, non-standard evaluation, and data import.
9. **Unhelpfully Seeking Help** — how to investigate a problem, read documentation and FAQs, prepare a reproducible example, and ask a useful R question.

The chapter names above follow Burns's own table of contents; the one-line descriptions are summaries for orientation.
