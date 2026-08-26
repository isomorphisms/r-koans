# R koans

A collection of small R exercises, puzzles, and teaching sequences, organized by the people who designed them.

The goal is not to erase provenance by blending everything into one anonymous tutorial. Each source keeps its credit and license notes. Where an exercise is copied, adapted, or merely inspired by a source, that is stated plainly.

All executable collections use **testthat edition 3** as the common testing framework. Historical exercises are preserved where practical; compatibility or reformatting lives in the anthology layer and is identified as such. See `TESTING.md`.

## What each source is trying to give you

A feature name is not yet a reason to learn the feature. "Bindings", "joins", "linear models", and "Advanced R" are labels. The more useful question is: **what can I do, understand, or ask about my data once I know this?**

| Source | What it lets you do |
| --- | --- |
| **Colleen O'Briant — tidyverse koans** | Turn a rectangular dataset into a sequence of questions: keep the cases and variables you need, create quantities, combine tables, visualize relationships, quantify fitted relationships, and package repeated transformations into functions. |
| **David Springate — Rkoans** | Manipulate ordinary R values without treating the syntax as magic: calculate with vectors, select pieces of objects, combine lists, apply functions repeatedly, and understand that functions themselves are values. |
| **Patrick Cudahy — three short advRkoans** | Tell the difference between a name, a value, and an object in memory; recognize when two names refer to the same object; and predict when a transformation makes a copy. That makes aliasing, mutation-like behavior, and memory costs less mysterious. |
| **Jenny Bryan / STAT 545 — joins** | Combine facts that live in different tables and predict exactly which rows survive, which columns appear, and what changes when you reverse the direction of a join. |
| **Hadley Wickham — Advanced R** | Build your own reliable R tools instead of only calling existing ones: reason about names, environments and evaluation; write higher-order functions; define object behavior and dispatch; use metaprogramming deliberately; debug failures; and understand performance costs. |
| **Patrick Burns — The R Inferno** | Recognize cases where plausible-looking R code gives a numerically wrong, unexpectedly slow, or semantically surprising result, and know what to inspect before trusting it. |

The overlap is intentional. Two authors may teach the same mechanism for different reasons: a beginner may need bindings to reuse a value, Cudahy uses them to distinguish names from object identity, and Wickham uses the same semantics as part of a larger model for writing language-level abstractions.

## Name exercises by the capability, not merely the feature

Prefer a title that answers "why should I spend five minutes on this?"

- `use_bindings_to_reuse_values_and_reason_about_object_identity.R`, not merely `bindings.R`
- `understand_copy_on_modify_so_one_transformation_does_not_silently_change_another_name.R`, not merely `copying.R`
- an eventual regression exercise should say that a fitted slope quantifies how the fitted outcome changes with a predictor; under an ordinary linear model that coefficient is the derivative of the fitted mean with respect to that predictor, holding the other included predictors fixed
- an object-dispatch exercise should say that learning dispatch lets you teach a generic verb such as `plot()` what to do with your own kind of object, so callers can keep writing `plot(x)` instead of remembering a special function name

The mechanism can still appear in the title. It just should not be the whole explanation.

## Sources

- `Colleen O'Briant teaches the tidyverse/` — all twenty progressive tidyverse koans and their original test suite, with O'Briant's GPL-3 provenance retained.
- `short/Patrick Cudahy/` — Cudahy's complete three-koan set, grouped under `short/` because it is compact; the exercise filenames state the capability each one teaches.
- `David Springate teaches R with koans/` — seven GPL-3 introductory R koans, preserved in their intended sequence.
- `Jenny Bryan teaches joins/` — the tiny superhero/publisher examples from STAT 545 adapted into testthat-3 join koans under CC BY-SA 4.0.
- `Hadley Wickham teaches Advanced R/` — a source map of *Advanced R* and its semantics-heavy chapters; the CC BY-NC-SA book is not silently folded into an unrestricted corpus.
- `Patrick Burns leads you through The R Inferno/` — a reading map to Burns's catalog of R traps and surprises; the book itself is not reproduced.

Compact source sets can live together under `short/<author>/` instead of each taking a top-level directory.

See `SOURCES-AND-LICENSES.md` for the provenance and licensing table.

## Reformatting

In August 2026, **ChatGPT / OpenAI** assisted with source research, repository organization, provenance and license notes, testthat-3 normalization, compatibility wrappers, and selected adaptations.

Reformatting does not transfer authorship of the underlying ideas, exercises, examples, or prose. Each source says what changed and who wrote or designed the original material.
