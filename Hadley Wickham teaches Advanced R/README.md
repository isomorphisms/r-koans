# Hadley Wickham teaches how R's names, functions, environments, dispatch, and evaluation work

## Why learn this layer of R?

**Advanced R** studies R as a programming language rather than just as a tool for analysis. The point is not to collect obscure language facts. It is to become able to build your own reliable tools when the functions you were handed are no longer enough.

The major subjects buy different capabilities:

- **names, values, and copying** — know what assignment actually did, whether two names share an object, and when a transformation allocates something new
- **vectors and subsetting** — define exactly what part of a data object an operation should act on
- **functions and environments** — package behavior, control where names are looked up, and build functions that work with other functions
- **object systems and dispatch** — teach a familiar generic verb what your own kind of object means; for example, define the natural plot for a new data type so callers can keep writing `plot(x)`
- **evaluation and metaprogramming** — write interfaces that deliberately work with expressions and user-written code instead of treating evaluation rules as magic
- **debugging** — find which assumption failed rather than guessing from the final error
- **performance and memory** — identify where time and allocation are actually going before optimizing

The motivation for a koan treatment is that these subjects are easiest to learn with very small experiments. A few lines of R can distinguish two competing mental models of binding, copying, dispatch, scoping, or evaluation.

## This source

**Hadley Wickham wrote _Advanced R_.** The source is public at <https://github.com/hadley/adv-r> and the book is at <https://adv-r.hadley.nz/>.

The upstream book is organized into foundations; functional programming; object-oriented programming; metaprogramming; and techniques/performance. See `SOURCE-MAP.md` for the chapter-level map used by this anthology.

Patrick Cudahy's three `advRkoans`, grouped under `short/Patrick Cudahy/`, take only a narrow early slice of this territory: test expectations, bindings/object identity, and copy-on-modify. Cudahy's exercises are credited to Cudahy; Wickham is credited as the antecedent his project explicitly follows.

## Credit and reformatting

The book, exposition, and examples in _Advanced R_ are due to **Hadley Wickham**.

In **August 2026**, **ChatGPT / OpenAI** added this source map and anthology framing. The book is **CC BY-NC-SA 4.0**, so this repository does not silently absorb it into an unrestricted corpus. Material copied or closely adapted from the book must retain attribution, noncommercial use, and ShareAlike terms.

For now this folder maps the source rather than duplicating the entire book. New independently written koans may cite the relevant chapter without claiming Wickham's prose or exercises as original work.
