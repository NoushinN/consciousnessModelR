# Simulate broadcast across a simple network

`broadcast_network()` simulates how a selected signal spreads through a
network after entering a simplified global workspace.

## Usage

``` r
broadcast_network(
  n_nodes = 10,
  steps = 50,
  source_node = 1,
  connection_probability = 0.3,
  spread_rate = 0.25,
  decay = 0.1,
  seed = NULL
)
```

## Arguments

- n_nodes:

  Number of network nodes.

- steps:

  Number of simulation time steps.

- source_node:

  Node where the broadcast begins.

- connection_probability:

  Probability that two nodes are connected.

- spread_rate:

  Rate at which activation spreads along connections.

- decay:

  Proportion of activation lost at each step.

- seed:

  Optional random seed.

## Value

A list with `time_series` and `adjacency_matrix`.

## Examples

``` r
net <- broadcast_network(seed = 1)
head(net$time_series)
#>   step node activation source_node
#> 1    1   N1       0.90          N1
#> 2    1   N2       0.00          N1
#> 3    1   N3       0.25          N1
#> 4    1   N4       0.25          N1
#> 5    1   N5       0.25          N1
#> 6    1   N6       0.25          N1
```
