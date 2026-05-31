# Limitations and Responsible Use

``` r
library(consciousnessModelR)
```

## Purpose

This article explains how to interpret `consciousnessModelR`
responsibly. This is essential because computational models of
consciousness can easily be misunderstood or overstated.

The package provides simplified educational models of theoretical ideas.
It does not measure consciousness, detect consciousness, create
consciousness, or determine whether any biological or artificial system
is conscious.

The guiding question for this chapter is:

> How can simplified models of consciousness theories be useful without
> exaggerating what they show?

## Why responsible interpretation matters

Consciousness is a difficult subject because it sits at the boundary of
philosophy, cognitive science, neuroscience, psychology, artificial
intelligence, and ethics. It includes both functional questions and
first-person questions.

Functional questions ask how information is selected, integrated,
broadcast, reported, remembered, or used for action. These questions can
often be modeled computationally.

First-person questions ask why there is subjective experience at all.
These questions are much harder to model. Chalmers described this as the
distinction between the “easy problems” and the “hard problem” of
consciousness (Chalmers 1996).

`consciousnessModelR` focuses on functional and theoretical modeling. It
does not solve the hard problem of consciousness.

## What the package does

The package provides simplified simulations of ideas commonly discussed
in consciousness studies.

It helps learners explore:

- attention and selection;
- competition among signals;
- global workspace access;
- broadcast through a network;
- simplified information integration;
- threshold-based access-like transitions;
- visualization and interpretation of toy models.

The package is appropriate for:

- teaching;
- conceptual exploration;
- science communication;
- introductory computational modeling;
- portfolio development;
- comparing theoretical assumptions.

Its purpose is educational. It helps users think more clearly about
theories of consciousness by making assumptions visible in code.

## What the package does not do

The package does not:

- detect consciousness;
- measure subjective experience;
- create consciousness;
- diagnose cognitive states;
- determine whether an AI system is conscious;
- determine whether an animal or human is conscious;
- implement full neuroscience models;
- compute formal Integrated Information Theory phi;
- solve the hard problem of consciousness.

These limits should be stated clearly wherever the package is presented.

## Toy models and theoretical humility

A toy model is a deliberately simplified representation. It removes much
of the complexity of the real phenomenon in order to make one idea
easier to examine.

This can be valuable. A toy model can show how a threshold affects
classification, how network connectivity affects broadcast, or how
salience and goal relevance affect attention.

However, simplification also creates risk. A model that represents one
mechanism may be mistaken for a model of the whole phenomenon.

For example:

- changing a threshold does not reveal the true boundary of
  consciousness;
- increasing network connectivity does not model a real brain;
- calculating a simplified integration score does not compute formal
  phi;
- selecting a signal does not imply subjective experience;
- broadcasting activation does not prove consciousness.

The value of the model is not that it fully represents consciousness.
Its value is that it clarifies one theoretical assumption at a time.

## Functional access is not subjective experience

Many functions in the package are closer to models of **access
consciousness** than **phenomenal consciousness**.

Access consciousness concerns whether information is available for
report, reasoning, memory, planning, or action. Phenomenal consciousness
concerns the qualitative character of experience: what it is like to
see, feel, hear, think, or perceive (Block 1995; Chalmers 1996).

This distinction matters because a model may represent access-like
processing without representing subjective experience.

For example,
[`broadcast_network()`](https://noushinn.github.io/consciousnessModelR/reference/broadcast_network.md)
can show how activation spreads through a network. This may illustrate
system-wide availability. But it does not explain why that availability
would feel like anything.

## Responsible language

When describing outputs from `consciousnessModelR`, use careful
language.

Prefer:

> The model represents awareness-like access.

> The function illustrates global availability.

> The output is an educational proxy.

> The signal crosses a simplified threshold.

> The simulation represents a theoretical mechanism.

Avoid:

> The model is conscious.

> The function measures consciousness.

> The package detects awareness.

> The output proves subjective experience.

> The simulation shows real consciousness.

The difference is not just stylistic. It reflects the difference between
modeling a theoretical mechanism and claiming to explain consciousness
itself.

## Example of careful interpretation

``` r
sim <- simulate_global_workspace(seed = 5)

thresholded <- consciousness_threshold(
  sim,
  threshold = 0.75
)

table(thresholded$above_threshold)
#> 
#> FALSE  TRUE 
#>    14   786
```

The table shows how many simulated activation values crossed a
threshold. A careful interpretation is:

> In this simulation, some activation values crossed the selected
> access-like threshold.

An overstatement would be:

> The model produced conscious events.

The first statement is appropriate. The second is not.

## Model-specific cautions

Different functions require different forms of caution.

| Function | What it shows | What it does not show |
|----|----|----|
| [`attention_competition_model()`](https://noushinn.github.io/consciousnessModelR/reference/attention_competition_model.md) | Priority-based selection among signals | That the selected signal is conscious |
| [`simulate_global_workspace()`](https://noushinn.github.io/consciousnessModelR/reference/simulate_global_workspace.md) | Competition, ignition, and access-like broadcast | That global access is sufficient for experience |
| [`broadcast_network()`](https://noushinn.github.io/consciousnessModelR/reference/broadcast_network.md) | Spread of activation through a network | That a real brain or AI system is conscious |
| [`simulate_information_integration()`](https://noushinn.github.io/consciousnessModelR/reference/simulate_information_integration.md) | A simplified integration/differentiation proxy | Formal IIT phi or real consciousness |
| [`consciousness_threshold()`](https://noushinn.github.io/consciousnessModelR/reference/consciousness_threshold.md) | Classification relative to a threshold | The true boundary of consciousness |

This table can be useful in teaching because it makes the distinction
between model output and interpretation explicit.

## AI, consciousness, and premature conclusions

As artificial intelligence systems become more advanced, claims about
machine consciousness may become more common. This makes responsible
interpretation especially important.

A system might show attention-like selection, global broadcast,
information integration, or threshold-like processing. However,
satisfying one functional criterion does not automatically establish
subjective experience.

Different theories disagree about what would be required for machine
consciousness. Global workspace approaches may emphasize functional
access and broadcast. Integrated information approaches may emphasize
system organization (Tononi 2004; Oizumi, Albantakis, and Tononi 2014).
Philosophical approaches may argue that functional structure still
leaves the hard problem unresolved (Chalmers 1996).

`consciousnessModelR` should therefore not be used to claim that an
artificial system is or is not conscious. It should be used to clarify
what different theories would ask us to examine.

## Ethical importance

Claims about consciousness can have ethical consequences. If a system is
wrongly described as conscious, people may attribute moral status,
rights, feelings, or suffering where the evidence does not support it.
If a conscious being is wrongly treated as non-conscious, its interests
may be ignored.

This is why careful language matters. Even educational tools should
avoid creating confusion about what has and has not been demonstrated.

Responsible use requires separating:

- information processing;
- behavioral report;
- functional access;
- subjective experience;
- moral status.

These are related, but they are not the same.

## Why toy models are still useful

The limitations of toy models do not make them useless. On the contrary,
they can be valuable precisely because they are simple.

A good toy model allows learners to:

- manipulate assumptions;
- observe consequences;
- compare theoretical structures;
- identify what is missing;
- understand why the real problem is difficult.

For example, changing a threshold value does not reveal the true
boundary of consciousness. But it does show how threshold assumptions
affect interpretation.

Changing network connectivity does not model a biological brain. But it
does show why architecture matters for broadcast and access.

Changing attention weights does not explain consciousness. But it does
show how salience, novelty, and goals shape selection.

## Responsible educational use

When using the package in teaching, it is helpful to ask students to
distinguish between three levels:

1.  **Code output**: What did the simulation produce?
2.  **Model interpretation**: What does the output represent within the
    toy model?
3.  **Theoretical claim**: What, if anything, does this suggest about
    consciousness theory?

For example:

``` r
table(thresholded$above_threshold)
```

Code output:

> A number of simulated activation values were above threshold.

Model interpretation:

> Some simulated signals met an access-like criterion.

Theoretical claim:

> Threshold assumptions affect how access-like events are classified.

The theoretical claim should remain modest.

## Recommended phrasing for reports and portfolios

For academic or portfolio descriptions, use wording such as:

> `consciousnessModelR` is an educational R package for exploring
> simplified computational models inspired by consciousness theories.

> The package provides toy simulations of attention, global workspace
> access, broadcast, information integration, and threshold-based
> classification.

> The models are intended for conceptual exploration and teaching, not
> for detecting or measuring consciousness.

This language is accurate, professional, and academically defensible.

## Key takeaway

`consciousnessModelR` should be presented as a theoretical and
educational toolkit. Its strength is conceptual clarity, not empirical
measurement.

The package helps users compare ideas from consciousness studies by
translating them into simplified computational models. It does not
determine whether consciousness is present. It helps clarify what
different theories mean when they speak about attention, access,
broadcast, integration, and thresholds.

Responsible use requires keeping this distinction clear.

## References

Block, Ned. 1995. “On a Confusion about a Function of Consciousness.”
*Behavioral and Brain Sciences* 18 (2): 227–47.

Chalmers, David J. 1996. *The Conscious Mind*. Oxford University Press.

Oizumi, Masafumi, Larissa Albantakis, and Giulio Tononi. 2014. “From the
Phenomenology to the Mechanisms of Consciousness: Integrated Information
Theory 3.0.” *PLoS Computational Biology* 10 (5): e1003588.

Tononi, Giulio. 2004. “An Information Integration Theory of
Consciousness.” *BMC Neuroscience* 5 (42).
