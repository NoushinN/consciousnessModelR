# Plot a consciousnessModelR simulation output

`plot_consciousness_sim()` creates a simple line plot from a simulation
result.

## Usage

``` r
plot_consciousness_sim(data, x, y, group = NULL)
```

## Arguments

- data:

  A data frame.

- x:

  Column name for the x-axis.

- y:

  Column name for the y-axis.

- group:

  Optional grouping column.

## Value

A ggplot object.

## Examples

``` r
sim <- simulate_global_workspace(seed = 1)
plot_consciousness_sim(sim, x = "step", y = "activation", group = "process")
```
