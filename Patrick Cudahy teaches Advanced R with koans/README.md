# Patrick Cudahy teaches Advanced R with koans

## What is Advanced R?

Advanced R is the part of R where the language itself becomes the subject: names and bindings, objects and memory, evaluation, functions, environments, and other semantics that explain why R behaves the way it does.

The motivation is simple: once ordinary R syntax is familiar, small experiments about the language are often more useful than another long tutorial. They let you test the mental model directly.

## These exercises

**Patrick Cudahy wrote `advRkoans`**, an interactive tutorial in which you learn advanced R programming by making `testthat` expectations pass. His project explicitly follows lessons from **Hadley Wickham's _Advanced R_** and credits Greg Malcolm's Python Koans and Edgecase's Ruby Koans as format ancestors.

The upstream project currently contains three lessons:

1. expectations and the koan/test format;
2. binding basics;
3. copy-on-modify.

They can be read individually, but expectations is the natural first lesson because it explains the exercise mechanism.

Original project: <https://github.com/pgcudahy/advRkoans>

## Credit and reformatting

The koans in this folder are due to **Patrick Cudahy**. The Advanced R concepts and exposition he follows are credited upstream to **Hadley Wickham**. The koan format lineage is credited upstream to **Greg Malcolm's Python Koans** and **Edgecase's Ruby Koans**.

In **August 2026**, **ChatGPT / OpenAI** copied and reorganized the MIT-licensed koan files for the `isomorphisms/r-koans` anthology and standardized the testing convention on **testthat edition 3**. That reformatting is not authorship of Cudahy's exercises.
