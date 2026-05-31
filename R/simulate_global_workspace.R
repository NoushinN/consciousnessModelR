#' Simulate a toy Global Workspace model
#'
#' `simulate_global_workspace()` models several competing processes. At each
#' time step, processes receive input, compete for access, and the strongest
#' process may cross an ignition threshold. When ignition occurs, the winning
#' signal is treated as globally broadcast.
#'
#' This function is inspired by Global Workspace Theory, but it is not a
#' biological model and does not simulate real consciousness.
#'
#' @param n_processes Number of competing processes.
#' @param steps Number of simulation time steps.
#' @param input_strength Optional numeric vector of baseline input strengths.
#' @param noise Amount of random fluctuation added at each step.
#' @param ignition_threshold Activation level required for global broadcast.
#' @param decay Proportion of previous activation lost at each step.
#' @param seed Optional random seed.
#' @return A data frame with one row per process per step.
#' @export
#' @examples
#' sim <- simulate_global_workspace(seed = 1)
#' head(sim)
simulate_global_workspace <- function(n_processes = 8, steps = 100, input_strength = NULL,
                                      noise = 0.10, ignition_threshold = 0.70,
                                      decay = 0.20, seed = NULL) {
  check_positive_integer(n_processes, "n_processes")
  check_positive_integer(steps, "steps")
  check_probability(noise, "noise")
  check_probability(ignition_threshold, "ignition_threshold")
  check_probability(decay, "decay")
  if (!is.null(seed)) set.seed(seed)
  if (is.null(input_strength)) input_strength <- stats::runif(n_processes, 0.2, 0.8)
  if (length(input_strength) != n_processes) stop("input_strength must have length n_processes.", call. = FALSE)
  activation <- stats::runif(n_processes, 0, 0.2)
  out <- vector("list", steps)
  for (t in seq_len(steps)) {
    activation <- activation * (1 - decay) + input_strength + stats::rnorm(n_processes, 0, noise)
    activation <- pmin(pmax(activation, 0), 1)
    winner <- which.max(activation)
    ignited <- activation[winner] >= ignition_threshold
    out[[t]] <- data.frame(step = t, process = paste0("P", seq_len(n_processes)),
                           activation = activation, winner = paste0("P", winner),
                           is_winner = seq_len(n_processes) == winner,
                           broadcast = ifelse(seq_len(n_processes) == winner & ignited, activation[winner], 0),
                           ignited = ignited)
  }
  do.call(rbind, out)
}
