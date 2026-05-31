# Comparing Consciousness Theories

``` r
library(consciousnessModelR)
```

## Purpose

This article compares the theories represented in `consciousnessModelR`.
The goal is not to rank theories, but to clarify what each theory
emphasizes and how the package translates those ideas into educational
simulations.

## Comparison table

| Theoretical emphasis | Package function | Main modeling idea |
|----|----|----|
| Global access | [`simulate_global_workspace()`](https://noushinn.github.io/consciousnessModelR/reference/simulate_global_workspace.md) | Processes compete; a winner may ignite and become globally available. |
| Attention | [`attention_competition_model()`](https://noushinn.github.io/consciousnessModelR/reference/attention_competition_model.md) | Signals compete based on salience, novelty, and goal relevance. |
| Broadcast | [`broadcast_network()`](https://noushinn.github.io/consciousnessModelR/reference/broadcast_network.md) | A selected signal spreads through a network. |
| Integration | [`simulate_information_integration()`](https://noushinn.github.io/consciousnessModelR/reference/simulate_information_integration.md) | Components combine connectivity, shared activity, and differentiation. |
| Threshold crossing | [`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md) | Activation is classified relative to a simplified access threshold. |

## A compact workflow

``` r
gw <- simulate_global_workspace(seed = 11)

thresholded <- consciousness_threshold(
  gw,
  activation_col = "activation",
  threshold = 0.70
)

head(thresholded)
#>   step process activation winner is_winner broadcast ignited threshold
#> 1    1      P1  0.5026894     P6     FALSE 0.0000000    TRUE       0.7
#> 2    1      P2  0.1196135     P6     FALSE 0.0000000    TRUE       0.7
#> 3    1      P3  0.4515398     P6     FALSE 0.0000000    TRUE       0.7
#> 4    1      P4  0.2441136     P6     FALSE 0.0000000    TRUE       0.7
#> 5    1      P5  0.2301338     P6     FALSE 0.0000000    TRUE       0.7
#> 6    1      P6  0.8835197     P6      TRUE 0.8835197    TRUE       0.7
#>   above_threshold threshold_distance
#> 1           FALSE         -0.1973106
#> 2           FALSE         -0.5803865
#> 3           FALSE         -0.2484602
#> 4           FALSE         -0.4558864
#> 5           FALSE         -0.4698662
#> 6            TRUE          0.1835197
```

## Attention before access

``` r
attn <- attention_competition_model(seed = 11)

table(attn$selected_signal)
#> 
#>  S1  S2  S3  S6 
#> 108  12 138 342
```

## Broadcast after selection

``` r
net <- broadcast_network(seed = 11)

head(net$time_series)
#>   step node activation source_node
#> 1    1   N1       0.90          N1
#> 2    1   N2       0.00          N1
#> 3    1   N3       0.00          N1
#> 4    1   N4       0.00          N1
#> 5    1   N5       0.00          N1
#> 6    1   N6       0.25          N1
```

## Integration as a different explanatory level

``` r
info <- simulate_information_integration(seed = 11)

info$summary
#>   mean_connectivity shared_information differentiation integration_score
#> 1              0.25          0.1894251       0.3393214          0.016069
```

## Interpretation

The functions represent different explanatory levels.

Attention models ask which signal is prioritized. Global workspace
models ask whether selected information becomes globally available.
Broadcast models ask how information spreads. Integration models ask
whether the system has unified but differentiated internal structure.
Threshold models ask when a continuous process is classified as
access-like.

These are not necessarily mutually exclusive. A complete theory of
consciousness may require several levels of explanation.

## Reflection questions

1.  Can a signal be attended without being conscious?
2.  Can information be globally broadcast without rich subjective
    experience?
3.  Can a system be integrated but unable to report?
4.  Does threshold crossing explain consciousness or only access?
5.  What would a stronger model need to include?

## Suggested readings

- Baars, B. J. (1988). *A Cognitive Theory of Consciousness.*
- Chalmers, D. J. (1996). *The Conscious Mind.*
- Dehaene, S. (2014). *Consciousness and the Brain.*
- Seth, A. K. (2018). Consciousness: The last 50 years and the next.
- Tononi, G. (2004). An information integration theory of consciousness.
