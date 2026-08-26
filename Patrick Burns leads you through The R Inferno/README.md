# Patrick Burns leads you through The R Inferno

## What is The R Inferno?

**The R Inferno** is Patrick Burns's guide to common R programming traps, surprising behavior, performance mistakes, and debugging habits. It is especially koan-like because many of its lessons begin with code that looks obvious until R does something you did not expect.

The motivation is to improve your mental model of R by studying the places where ordinary assumptions fail.

## The circles

1. **Falling into the Floating Point Trap** — representation, equality, and numerical error.
2. **Growing Objects** — the cost of repeatedly enlarging objects.
3. **Failing to Vectorize** — vector operations, subscripting, and avoiding unnecessary loops.
4. **Over-Vectorizing** — cases where forcing vectorization makes code worse.
5. **Not Writing Functions** — abstraction and repeated code.
6. **Doing Global Assignments** — hazards of changing nonlocal state.
7. **Tripping on Object Orientation** — S3, S4, inheritance, dispatch, and namespaces.
8. **Believing It Does as Intended** — coercion, matching, subscripting, factors, missing values, evaluation, and data import.
9. **Unhelpfully Seeking Help** — investigating problems, documentation, reproducible examples, and asking useful questions.

The chapter names follow Burns's table of contents; the one-line descriptions above are anthology summaries.

## Credit and copying

The book and its ideas are due to **Patrick Burns**.

- Free PDF from Burns Statistics: <https://www.burns-stat.com/pages/Tutor/R_inferno.pdf>
- Book page: <https://www.burns-stat.com/documents/books/the-r-inferno/>

Unlike the openly licensed koan collections elsewhere in this repository, _The R Inferno_ is not being reproduced here. Free access to a PDF is not permission to copy the book wholesale.

In **August 2026**, **ChatGPT / OpenAI** reorganized this reading guide into the author-named anthology structure. Any future executable koans in this folder should be newly written demonstrations of the underlying R behavior, with Burns cited as inspiration rather than copied prose or exercises.
