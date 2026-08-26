# Colleen O'Briant teaches how to turn tables into analyses with the tidyverse

## What is the tidyverse?

The **tidyverse** is a family of R packages built around a common style for working with data: importing it, reshaping it, querying it, plotting it, and applying functions to it. Packages such as `dplyr`, `tibble`, `ggplot2`, and `purrr` are designed to fit together.

The motivation is practical: a small, consistent vocabulary lets you move from a question about data to readable R code without learning a different style for every step.

## These exercises

**Colleen O'Briant designed these koans.** She wrote them as a gentle introduction to R and the tidyverse for economists and other applied researchers, originally for an upper-level econometrics course. The twenty exercises get gradually harder and are intended to be worked roughly in order, because later exercises build on ideas introduced earlier.

The useful map is not just a list of package names. Each part gives you a new kind of question you can ask or transformation you can make:

- **vectors and tibbles** — represent measured quantities, observations, and variables in forms you can inspect and manipulate
- **pipes and `dplyr`** — turn a question into a readable sequence such as "keep these cases, create this quantity, group by this condition, summarize what remains"
- **joins** — bring facts that live in different tables together by the thing they describe
- **`ggplot2`** — make distributions, differences, trends, and relationships visible instead of trying to infer them from a table of numbers
- **linear models** — quantify how the fitted outcome changes as a predictor changes; in an ordinary linear model the coefficient is the derivative of the fitted mean with respect to that predictor, holding the other included predictors fixed
- **distributions** — describe uncertainty and compare observed quantities with probabilistic models
- **functions and `purrr`** — turn a transformation you worked out once into a reusable operation and apply it systematically to many inputs
- **lags and first differences** — ask what changed from one observation or time point to the next rather than only asking about absolute levels
- **`reduce()` and `accumulate()`** — combine a sequence into a final result, or keep the intermediate states when the path matters

Original project: <https://github.com/cobriant/tidyverse_koans>

## Credit and reformatting

The ideas, exercise design, teaching sequence, and original material in this folder are due to **Colleen O'Briant**.

In **August 2026**, **ChatGPT / OpenAI** reformatted the material for the `isomorphisms/r-koans` anthology and a uniform **testthat edition 3** testing convention. Colleen O'Briant's own repository already used testthat edition 3, so the testing changes are intentionally minimal.

Reformatting is not authorship. Files copied or adapted from O'Briant remain credited to her, and the original license is retained in this folder.

## How to work the koans

Open an exercise in `R/`, fill in the marked answers, and run its corresponding test file. Incomplete answers are skipped; completed answers either pass or show you where your current model is wrong.

The sequence is progressive, but nothing prevents you from opening a later koan if that is the topic you need.

---

## Optional orientation: tidyverse and pandas

*You do not need this section to do the koans. It is here because people who simply want to analyze some data often wonder whether they should start with R or Python.*

`tidyverse` and `pandas` are not exact counterparts. The tidyverse is a family of cooperating R packages; pandas is the central Python DataFrame library and is usually used alongside NumPy, Matplotlib, seaborn, SciPy, scikit-learn, and other packages.

| Question | R + tidyverse | Python + pandas |
| --- | --- | --- |
| What does the code tend to look like? | A sequence of data verbs such as `filter()`, `select()`, `mutate()`, `summarise()`, and joins, often connected by a pipe. | Operations on a `DataFrame` or `Series`, commonly through methods, indexing, assignment, and method chains. |
| What is the teaching style? | Often starts from the data-analysis task: "filter these rows, make this variable, group, summarize, plot." | Often mixes DataFrame work with ordinary Python programming concepts because pandas lives inside a general-purpose language. |
| Plotting | `ggplot2` gives a consistent grammar for building statistical graphics in layers. | pandas has plotting hooks, but serious plotting commonly moves into Matplotlib, seaborn, Plotly, or plotnine. |
| Statistics | R has a very deep native statistics ecosystem, formula notation, and many specialist packages written by statisticians. | Python has strong numerical and scientific libraries and an especially broad machine-learning ecosystem. |
| General software | R is unusually focused on data analysis, statistics, reports, and interactive analytical applications. | Python is a general-purpose language used for data work but also web services, automation, machine learning systems, applications, and many other kinds of software. |
| Reproducible reports | R Markdown and Quarto make analysis-plus-prose a very common workflow. | Jupyter is extremely common; Quarto also works well with Python. |
| Which should I choose? | A strong choice when the center of gravity is data analysis, statistical modelling, visualization, or analytical reporting. | A strong choice when analysis needs to live inside a larger Python software or machine-learning system, or when you already work primarily in Python. |

For ordinary tabular data work, neither language wins in the abstract. The more useful question is what you need to connect the analysis to: a statistics/reporting workflow, a Python software stack, an existing team, or a particular package that already solves your problem.
