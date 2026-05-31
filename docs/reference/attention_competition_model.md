# Simulate attention competition among signals

`attention_competition_model()` simulates how signals may compete for
priority based on salience, novelty, goal relevance, and noise.

## Usage

``` r
attention_competition_model(
  n_signals = 6,
  steps = 100,
  salience = NULL,
  novelty = NULL,
  goal_relevance = NULL,
  weights = c(0.4, 0.3, 0.3),
  noise = 0.1,
  seed = NULL
)
```

## Arguments

- n_signals:

  Number of competing signals.

- steps:

  Number of simulation time steps.

- salience:

  Optional numeric vector of signal salience values.

- novelty:

  Optional numeric vector of signal novelty values.

- goal_relevance:

  Optional numeric vector of goal relevance values.

- weights:

  Numeric vector of length 3 giving weights for salience, novelty, and
  goal relevance.

- noise:

  Standard deviation of random noise.

- seed:

  Optional random seed.

## Value

A data frame with one row per signal per step.

## Examples

``` r
attn <- attention_competition_model(seed = 1)
head(attn)
#>   step signal  salience    novelty goal_relevance  priority selected
#> 1    1     S1 0.2655087 0.94467527      0.6870228 0.6251114    FALSE
#> 2    1     S2 0.3721239 0.66079779      0.3841037 0.6955436    FALSE
#> 3    1     S3 0.5728534 0.62911404      0.7698414 0.8038564    FALSE
#> 4    1     S4 0.9082078 0.06178627      0.4976992 0.4849447    FALSE
#> 5    1     S5 0.2016819 0.20597457      0.7176185 0.0000000    FALSE
#> 6    1     S6 0.8983897 0.17655675      0.9919061 1.0000000     TRUE
#>   selected_signal
#> 1              S6
#> 2              S6
#> 3              S6
#> 4              S6
#> 5              S6
#> 6              S6
```
