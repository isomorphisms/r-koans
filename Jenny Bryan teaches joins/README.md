# Jenny Bryan teaches joins

## What is a join?

A **join** combines information from two tables by matching values in one or more key columns. Different joins answer different questions: keep only matches, keep every row from the left table, keep unmatched rows, and so on.

The motivation for these exercises is unusually concrete. Venn diagrams can suggest set membership, but they hide what actually happens to **rows and columns**. Tiny tables let you predict the exact result and then check whether your mental model was right.

## These exercises

The source is **Jenny Bryan's STAT 545 joins cheatsheet**, using small `superheroes` and `publishers` tables. STAT 545 identifies Jenny Bryan as its main author and also credits the STAT 545 teaching assistants and other contributors.

The exercises here preserve that setup and turn the join examples into `testthat` expectations. The natural order is:

1. inspect the two tiny tables;
2. `inner_join()`;
3. `semi_join()`;
4. `left_join()`;
5. `anti_join()`;
6. reverse the left and right tables;
7. `full_join()`.

You can jump around, but the point is to predict the exact rows and columns before running the test.

Original chapter: <https://stat545.com/join-cheatsheet.html>

Source repository: <https://github.com/rstudio-education/stat545/blob/master/15_join-tibbles.Rmd>

## Credit and reformatting

The join examples, tiny-table pedagogy, superhero/publisher data, and teaching idea are due to **Jenny Bryan / STAT 545**. STAT 545 also credits its TAs and contributors; see the upstream project for the complete contributor history.

In **August 2026**, **ChatGPT / OpenAI** reformatted selected examples into a uniform **testthat edition 3** koan format for `isomorphisms/r-koans`. The AI contribution is the testing/repository reformat, not the underlying teaching idea.

This derivative material is licensed **CC BY-SA 4.0**, matching STAT 545's license. Changes from the source are explicitly acknowledged here.
