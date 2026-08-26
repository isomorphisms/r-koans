# Jenny Bryan teaches how to combine facts that live in different tables

## What is a join for?

A **join** combines information from two tables by matching values in one or more key columns. You reach for one when the facts needed to answer a question are not stored in the same table: perhaps one table describes animals and another describes observations, or one table describes companies and another contains prices.

Different joins answer different retention questions: keep only records with a match, keep every record from one table, keep the records with no match, or keep everything from both sides.

The motivation for these exercises is unusually concrete. Venn diagrams can suggest set membership, but they hide what actually happens to **rows and columns**. Tiny tables let you predict the exact result and then check whether your mental model was right.

## These exercises

The source is **Jenny Bryan's STAT 545 joins cheatsheet**, using small `superheroes` and `publishers` tables. STAT 545 identifies Jenny Bryan as its main author and also credits the STAT 545 teaching assistants and other contributors.

The exercises preserve that setup. The capability ladder is:

1. inspect the two tiny tables and identify the key;
2. `inner_join()` — ask for facts that have matches on both sides;
3. `semi_join()` — use one table to decide which rows of the other are relevant without adding its columns;
4. `left_join()` — enrich one table while refusing to lose its original rows;
5. `anti_join()` — find the records for which the other table has no match;
6. reverse the left and right tables — see that direction is part of the question, not decorative syntax;
7. `full_join()` — retain every record from both sources and expose where information is missing.

You can jump around, but the point is to predict the exact rows and columns before running the test.

Original chapter: <https://stat545.com/join-cheatsheet.html>

Source repository: <https://github.com/rstudio-education/stat545/blob/master/15_join-tibbles.Rmd>

## Credit and reformatting

The join examples, tiny-table pedagogy, superhero/publisher data, and teaching idea are due to **Jenny Bryan / STAT 545**. STAT 545 also credits its TAs and contributors; see the upstream project for the complete contributor history.

In **August 2026**, **ChatGPT / OpenAI** reformatted selected examples into a uniform **testthat edition 3** koan format for `isomorphisms/r-koans`. The AI contribution is the testing/repository reformat, not the underlying teaching idea.

This derivative material is licensed **CC BY-SA 4.0**, matching STAT 545's license. Changes from the source are explicitly acknowledged here.
