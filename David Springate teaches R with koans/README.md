# David Springate teaches how to manipulate R values with vectors, lists, indexing, and functions

## What are these koans?

These are small R exercises written as unit tests. You edit a blank until the expectation becomes true, then move on. The point is to learn enough of R's ordinary data-manipulation vocabulary to start making things happen, while also getting an intuitive introduction to test-driven development.

## These exercises

**David Springate wrote `Rkoans`** as an interactive tutorial requiring no previous knowledge of R. His original runner stops at the current failing koan, so the intended path is sequential: fix the first failure, save, and continue when that file passes.

The sequence is useful as a capability ladder rather than just a list of language features:

1. **truth** — make and check yes/no claims that later control calculations and tests;
2. **calculations** — express arithmetic directly and predict how R combines operations;
3. **vectors** — work on a whole collection of like-valued observations at once;
4. **vector subsetting** — ask for exactly the observations or positions you need instead of manually copying them out;
5. **lists** — keep unlike kinds of values together when one homogeneous vector is not enough;
6. **apply functions** — repeat the same operation over many pieces without rewriting the operation each time;
7. **functions are values** — pass, store, and choose operations themselves, which is the basis for higher-order and data-driven programming.

This differs from Patrick Cudahy's binding koan. Springate is teaching the practical vocabulary needed to manipulate R values; Cudahy asks the more semantic question of whether two names refer to the same underlying object and when R copies it.

Springate explicitly credits **Hadley Wickham's `testthat`** framework. He also credits **EdgeCase's Ruby Koans** as the origin of the programming-language koan metaphor and says his project was directly influenced by the **Clojure Koans** and **Greg Malcolm's Python Koans**.

Original project: <https://github.com/DASpringate/Rkoans>

## Credit and reformatting

The exercises in `koans/` are due to **David Springate** and are copied from his GPL-3 project.

In **August 2026**, **ChatGPT / OpenAI** copied and reorganized the material for the `isomorphisms/r-koans` anthology and added a thin **testthat edition 3** runner. That reformatting is not authorship of Springate's exercises.
