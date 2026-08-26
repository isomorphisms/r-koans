# Patrick Burns teaches how to spot plausible-looking R code that is wrong, slow, or surprising

## What is The R Inferno for?

**The R Inferno** is Patrick Burns's guide to common R programming traps, surprising behavior, performance mistakes, and debugging habits. It is especially koan-like because many of its lessons begin with code that looks obvious until R does something you did not expect.

The practical capability is distrust with reasons: learn the places where an apparently sensible program can give you the wrong numerical conclusion, waste large amounts of time or memory, mutate state you did not mean to touch, or behave differently from the mental model in your head. Then know what to inspect.

## The circles

1. **Falling into the Floating Point Trap** — know when ordinary-looking numerical equality is not the question you actually mean to ask.
2. **Growing Objects** — recognize when repeated resizing turns an otherwise simple computation into unnecessary allocation and copying.
3. **Failing to Vectorize** — express operations over whole collections when that makes the computation clearer and faster.
4. **Over-Vectorizing** — recognize the opposite failure: forcing a vectorized form when it obscures the job or makes it worse.
5. **Not Writing Functions** — turn repeated reasoning into one operation you can name, test, and reuse.
6. **Doing Global Assignments** — see when a computation changes state outside itself and therefore becomes harder to reason about.
7. **Tripping on Object Orientation** — understand enough S3/S4 dispatch, inheritance, and namespaces to explain why a generic operation did what it did.
8. **Believing It Does as Intended** — catch coercion, matching, subsetting, factors, missing values, evaluation, and data-import behavior before it becomes a false conclusion.
9. **Unhelpfully Seeking Help** — reduce a confusing failure to evidence another person can reproduce and reason about.

The chapter names follow Burns's table of contents; the one-line descriptions above are anthology summaries of the capability each chapter is trying to build.

## Credit and copying

The book and its ideas are due to **Patrick Burns**.

- Free PDF from Burns Statistics: <https://www.burns-stat.com/pages/Tutor/R_inferno.pdf>
- Book page: <https://www.burns-stat.com/documents/books/the-r-inferno/>

Unlike the openly licensed koan collections elsewhere in this repository, _The R Inferno_ is not being reproduced here. Free access to a PDF is not permission to copy the book wholesale.

In **August 2026**, **ChatGPT / OpenAI** reorganized this reading guide into the author-named anthology structure. Any future executable koans in this folder should be newly written demonstrations of the underlying R behavior, with Burns cited as inspiration rather than copied prose or exercises.
