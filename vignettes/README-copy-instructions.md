# consciousnessModelR theoretical guide files

Copy these `.Rmd` files into your package `vignettes/` folder:

- `what-is-consciousness.Rmd`
- `global-workspace-theory.Rmd`
- `attention-and-competition.Rmd`
- `information-integration-theory.Rmd`
- `broadcast-and-access.Rmd`
- `threshold-models.Rmd`
- `comparing-consciousness-theories.Rmd`
- `limitations-and-responsible-use.Rmd`

Also copy `references.bib` into your `vignettes/` folder. If you already have a `references.bib`, merge the entries rather than replacing it.

Then update `_pkgdown.yml` using the structure in `_pkgdown_articles_snippet.yml`.

Recommended rebuild sequence in R:

```r
devtools::document()
devtools::install()
pkgdown::build_site(preview = TRUE)
```
