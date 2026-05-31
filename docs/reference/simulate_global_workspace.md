# Simulate a toy Global Workspace model

`simulate_global_workspace()` models several competing processes. At
each time step, processes receive input, compete for access, and the
strongest process may cross an ignition threshold. When ignition occurs,
the winning signal is treated as globally broadcast.

## Usage

``` r
simulate_global_workspace(
  n_processes = 8,
  steps = 100,
  input_strength = NULL,
  noise = 0.1,
  ignition_threshold = 0.7,
  decay = 0.2,
  seed = NULL
)
```

## Arguments

- n_processes:

  Number of competing processes.

- steps:

  Number of simulation time steps.

- input_strength:

  Optional numeric vector of baseline input strengths.

- noise:

  Amount of random fluctuation added at each step.

- ignition_threshold:

  Activation level required for global broadcast.

- decay:

  Proportion of previous activation lost at each step.

- seed:

  Optional random seed.

## Value

A data frame with one row per process per step.

## Details

This function is inspired by Global Workspace Theory, but it is not a
biological model and does not simulate real consciousness.

## Examples

``` r
sim <- simulate_global_workspace(seed = 1)
head(sim)
#>   step process activation winner is_winner broadcast ignited
#> 1    1      P1  0.5175416     P7     FALSE         0    TRUE
#> 2    1      P2  0.4026213     P7     FALSE         0    TRUE
#> 3    1      P3  0.7278461     P7     FALSE         0    TRUE
#> 4    1      P4  0.8121581     P7     FALSE         0    TRUE
#> 5    1      P5  0.3688088     P7     FALSE         0    TRUE
#> 6    1      P6  0.5790204     P7     FALSE         0    TRUE
```
