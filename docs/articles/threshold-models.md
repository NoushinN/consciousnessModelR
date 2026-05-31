# Threshold Models

``` r
library(consciousnessModelR)
```

## Purpose

This article explains the theoretical background behind
[`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md).
Threshold models describe conscious access as a transition: below some
level, processing may remain weak, local, unstable, or unavailable for
report; above that level, information may become more stable,
accessible, reportable, or globally available.

The purpose of this chapter is not to suggest that consciousness is
literally a single numerical threshold. Rather, the purpose is to show
how threshold logic appears in many theories of perception, attention,
and conscious access.

The guiding question is:

> What changes when a signal crosses from sub-threshold processing to
> access-like processing?

## Why thresholds matter

Thresholds are common in models of perception and consciousness. A weak
stimulus may influence behavior without being consciously reported. A
stronger or more stable stimulus may become available for report,
memory, reasoning, or action.

In Global Workspace Theory, this transition is often discussed in terms
of **ignition**: a signal becomes sufficiently strong and stable to
enter a global workspace and become broadly available (Baars 1988;
Dehaene 2014). In perceptual research, related ideas appear in
discussions of detection, confidence, visibility, and reportability
(Sandberg et al. 2010).

Thresholds are therefore useful because they represent a theoretical
boundary between different kinds of processing. They help distinguish
between:

- weak processing and strong processing;
- local processing and global access;
- non-reportable influence and reportable awareness;
- unstable activation and stable availability.

However, threshold models must be used carefully. A threshold can
clarify a theory, but it can also oversimplify consciousness if it is
treated as a direct measure of subjective experience.

## Thresholds as theoretical assumptions

A threshold is never neutral. Choosing a threshold means making an
assumption about what level of activation counts as access-like.

A low threshold makes access easier. Many signals will be classified as
above threshold. A high threshold makes access more selective. Fewer
signals will qualify.

This matters because different theories may imply different access
conditions. Some theories emphasize strong global broadcast. Others
emphasize recurrent local processing, confidence, higher-order
representation, or integrated information. Thresholds can be useful
across these frameworks, but their interpretation depends on the theory
being modeled.

In `consciousnessModelR`, a threshold should be understood as an
educational proxy, not as a claim about the real boundary of
consciousness.

## Relation to the package

The function
[`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md)
takes a data frame with an activation-like column and adds
threshold-related variables.

| Theoretical concept | Package representation |
|----|----|
| Signal strength | Activation column |
| Access boundary | `threshold` |
| Above-threshold processing | `above_threshold` |
| Distance from access boundary | `threshold_distance` |
| Awareness-like classification | Activation greater than or equal to threshold |

The function does not create consciousness. It classifies simulated
activation values relative to a user-defined boundary.

## Applying a threshold

The following example begins with a global workspace simulation. We then
apply a threshold to the activation values.

``` r
sim <- simulate_global_workspace(
  n_processes = 8,
  steps = 100,
  ignition_threshold = 0.75,
  seed = 3
)

thresholded <- consciousness_threshold(
  sim,
  activation_col = "activation",
  threshold = 0.70
)

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

The output includes new columns showing whether each activation value is
above the selected threshold and how far it is from the threshold.

## Counting threshold crossings

``` r
table(thresholded$above_threshold)
#> 
#> FALSE  TRUE 
#>    11   789
```

This table counts how many simulated activation values fall below or
above the threshold. In theoretical terms, these values can be
interpreted as below-threshold and above-threshold processing events.

The result should not be interpreted as a count of conscious
experiences. It is a count of simulated events that meet a simplified
access criterion.

## Comparing different thresholds

Threshold choice strongly affects interpretation.

``` r
low <- consciousness_threshold(sim, threshold = 0.50)
medium <- consciousness_threshold(sim, threshold = 0.70)
high <- consciousness_threshold(sim, threshold = 0.90)

c(
  low = sum(low$above_threshold),
  medium = sum(medium$above_threshold),
  high = sum(high$above_threshold)
)
#>    low medium   high 
#>    794    789    770
```

## Interpretation of the comparison

A lower threshold produces more awareness-like events. A higher
threshold produces fewer events.

This illustrates an important theoretical point: claims about
access-like processing often depend on where the boundary is placed. If
the threshold is permissive, many signals qualify. If the threshold is
strict, only the strongest or most stable signals qualify.

For teaching, this is useful because it shows that threshold-based
conclusions are sensitive to model assumptions.

## Threshold distance

The column `threshold_distance` provides more information than a simple
yes-or-no classification.

A value above zero means the activation is above threshold. A value
below zero means the activation is below threshold. Values close to zero
represent borderline cases.

``` r
head(thresholded[, c("step", "process", "activation", "threshold", "above_threshold", "threshold_distance")])
#>   step process activation threshold above_threshold threshold_distance
#> 1    1      P1  0.2713568       0.7           FALSE        -0.42864324
#> 2    1      P2  0.9122034       0.7            TRUE         0.21220340
#> 3    1      P3  0.4384098       0.7           FALSE        -0.26159021
#> 4    1      P4  0.3643226       0.7           FALSE        -0.33567744
#> 5    1      P5  0.5750702       0.7           FALSE        -0.12492979
#> 6    1      P6  0.6770616       0.7           FALSE        -0.02293842
```

This is useful because conscious access may not always be cleanly
binary. Some perceptual states may be ambiguous, weak, partial, or
unstable. A distance value helps represent the idea that some signals
are close to the boundary.

## Binary versus graded models

Threshold models often appear binary: a signal is either above threshold
or below threshold. But consciousness research also includes graded
views. On graded views, awareness may vary continuously in strength,
confidence, clarity, or stability.

This creates a conceptual tension.

A binary threshold is useful for modeling reportability or access. A
graded model may better represent partial awareness, uncertainty, or
varying confidence. In practice, both views may be useful depending on
the research question.

In `consciousnessModelR`, `above_threshold` gives a binary
classification, while `threshold_distance` preserves a more graded
interpretation.

## Thresholds, confidence, and reportability

Thresholds are closely connected to reportability. A person may process
a stimulus without being able to report it. As activation, confidence,
or stability increases, the stimulus may become reportable.

However, reportability is not identical to consciousness. Some theories
treat report as a useful behavioral indicator of conscious access.
Others argue that report may reflect additional cognitive processes
beyond experience itself.

This distinction matters because
[`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md)
models an access-like boundary, not subjective experience. Crossing a
threshold means that a simulated activation value has met a formal
criterion. It does not mean that experience has been produced.

## Thresholds and global workspace models

In Global Workspace Theory, threshold logic is often tied to ignition. A
signal becomes globally available when it becomes strong and stable
enough to enter the workspace (Dehaene 2014).

The following example compares the model’s built-in ignition variable
with a separate threshold classification.

``` r
gw <- simulate_global_workspace(
  n_processes = 8,
  steps = 100,
  ignition_threshold = 0.75,
  seed = 12
)

gw_thresholded <- consciousness_threshold(
  gw,
  activation_col = "activation",
  threshold = 0.75
)

table(
  ignited = gw_thresholded$ignited,
  above_threshold = gw_thresholded$above_threshold
)
#>        above_threshold
#> ignited FALSE TRUE
#>    TRUE    20  780
```

This comparison can help students see that different threshold rules may
classify events in different ways depending on how the model is
structured.

## Relation to other functions

[`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md)
can be applied whenever a simulation output contains an activation-like
variable.

| Related function | Use of threshold logic |
|----|----|
| [`simulate_global_workspace()`](https://noushinn.github.io/consciousnessModelR/reference/simulate_global_workspace.md) | Classifies process activation relative to an access threshold |
| [`attention_competition_model()`](https://noushinn.github.io/consciousnessModelR/reference/attention_competition_model.md) | Can classify priority values as above or below a selection threshold |
| [`broadcast_network()`](https://noushinn.github.io/consciousnessModelR/reference/broadcast_network.md) | Can classify node activation as locally or broadly available |
| [`simulate_information_integration()`](https://noushinn.github.io/consciousnessModelR/reference/simulate_information_integration.md) | Can classify component activation or integration scores if adapted |
| [`plot_consciousness_sim()`](https://noushinn.github.io/consciousnessModelR/reference/plot_consciousness_sim.md) | Visualizes activation patterns before or after thresholding |

This makes
[`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md)
a general interpretive tool across the package.

## Applying a threshold to a broadcast model

Threshold logic can also be applied to network activation.

``` r
net <- broadcast_network(
  n_nodes = 10,
  steps = 50,
  source_node = 1,
  seed = 4
)

broadcast_thresholded <- consciousness_threshold(
  net$time_series,
  activation_col = "activation",
  threshold = 0.40
)

head(broadcast_thresholded)
#>   step node activation source_node threshold above_threshold threshold_distance
#> 1    1   N1       0.90          N1       0.4            TRUE               0.50
#> 2    1   N2       0.25          N1       0.4           FALSE              -0.15
#> 3    1   N3       0.25          N1       0.4           FALSE              -0.15
#> 4    1   N4       0.00          N1       0.4           FALSE              -0.40
#> 5    1   N5       0.25          N1       0.4           FALSE              -0.15
#> 6    1   N6       0.00          N1       0.4           FALSE              -0.40
```

Here, above-threshold activation can be interpreted as a node becoming
sufficiently activated by the broadcast signal. Again, this is an
access-like classification, not a claim about experience.

## What the model captures

The function captures several useful ideas:

- activation can be continuous while interpretation is categorical;
- thresholds represent assumptions about access;
- lower thresholds produce more access-like events;
- higher thresholds produce more selective classifications;
- distance from threshold helps represent borderline cases.

These features make the function useful for teaching how theoretical
assumptions shape interpretation.

## What the model does not capture

The function is intentionally simple. It does not model:

- subjective experience;
- perceptual confidence in detail;
- verbal report;
- metacognition;
- recurrent neural processing;
- higher-order representation;
- biological detection thresholds.

It also does not determine the true threshold of consciousness. There
may be no single universal threshold.

## Thresholds and caution

Thresholds are powerful because they simplify complex processes. They
are also risky for the same reason.

A threshold can make a model easier to interpret, but it may hide
important complexity. Real conscious perception may involve multiple
interacting factors: attention, recurrence, confidence, memory,
reportability, context, and system-level organization.

Therefore, threshold outputs should be described carefully. It is better
to say:

> The signal crossed an awareness-like access threshold in the model.

rather than:

> The signal became conscious.

## Educational use

This chapter supports several classroom questions:

- How does changing the threshold change the number of access-like
  events?
- Are borderline cases important?
- Is conscious access binary or graded?
- What is the difference between activation and reportability?
- Can threshold logic be used without reducing consciousness to a
  number?
- How does thresholding interact with global workspace or broadcast
  models?

These questions help learners understand thresholds as modeling
assumptions rather than empirical facts.

## Key takeaway

Threshold models describe conscious access as a transition. They are
useful for representing the difference between weak/local processing and
stronger/access-like processing.

[`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md)
provides a simple educational tool for applying this idea to simulation
outputs. It does not measure consciousness, but it helps clarify how
threshold assumptions shape the interpretation of attention, activation,
broadcast, and access.

## References

Baars, Bernard J. 1988. *A Cognitive Theory of Consciousness*. Cambridge
University Press.

Dehaene, Stanislas. 2014. *Consciousness and the Brain*. Viking.

Sandberg, Kristian, Bert Timmermans, Morten Overgaard, and Axel
Cleeremans. 2010. “Measuring Consciousness: Is One Measure Better Than
the Other?” *Consciousness and Cognition* 19 (4): 1069–78.
