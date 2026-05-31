# Threshold Models of Awareness-like Processing

``` r
library(consciousnessModelR)
```

## Theory background

Some theories describe conscious access as threshold-like.

A stimulus may remain subliminal if activation is weak, but become
reportable or globally available if activation crosses a threshold.

## Run and apply threshold

``` r
sim <- simulate_global_workspace(seed = 3, ignition_threshold = 0.75)
thresholded <- consciousness_threshold(sim, activation_col = "activation", threshold = 0.70)
head(thresholded)
#>   step process activation winner is_winner broadcast ignited threshold
#> 1    1      P1  0.2713568     P2     FALSE 0.0000000    TRUE       0.7
#> 2    1      P2  0.9122034     P2      TRUE 0.9122034    TRUE       0.7
#> 3    1      P3  0.4384098     P2     FALSE 0.0000000    TRUE       0.7
#> 4    1      P4  0.3643226     P2     FALSE 0.0000000    TRUE       0.7
#> 5    1      P5  0.5750702     P2     FALSE 0.0000000    TRUE       0.7
#> 6    1      P6  0.6770616     P2     FALSE 0.0000000    TRUE       0.7
#>   above_threshold threshold_distance
#> 1           FALSE        -0.42864324
#> 2            TRUE         0.21220340
#> 3           FALSE        -0.26159021
#> 4           FALSE        -0.33567744
#> 5           FALSE        -0.12492979
#> 6           FALSE        -0.02293842
```

## Count threshold crossings

``` r
table(thresholded$above_threshold)
#> 
#> FALSE  TRUE 
#>    11   789
```

## Interpretation

Rows above the threshold represent signals that meet a simplified
criterion for awareness-like processing. This is not a claim about
subjective experience.
