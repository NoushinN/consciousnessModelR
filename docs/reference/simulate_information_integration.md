# Simulate a toy information integration score

`simulate_information_integration()` creates a simple network of
components and estimates an educational integration score based on
connectivity, shared activity, and differentiation.

## Usage

``` r
simulate_information_integration(
  n_components = 8,
  steps = 100,
  connection_probability = 0.3,
  coupling = 0.4,
  noise = 0.1,
  seed = NULL
)
```

## Arguments

- n_components:

  Number of components in the system.

- steps:

  Number of time steps.

- connection_probability:

  Probability of a connection between components.

- coupling:

  Strength of influence among connected components.

- noise:

  Amount of random fluctuation.

- seed:

  Optional random seed.

## Value

A list with a time series, adjacency matrix, and summary score.

## Details

This function is inspired by information-integration ideas, but it is
not an implementation of Integrated Information Theory and does not
compute phi.

## Examples

``` r
info <- simulate_information_integration(seed = 1)
info$summary
#>   mean_connectivity shared_information differentiation integration_score
#> 1           0.40625          0.1653532       0.3432453        0.02305742
```
