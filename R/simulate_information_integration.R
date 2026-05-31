#' Simulate a toy information integration score
#'
#' `simulate_information_integration()` creates a simple network of components
#' and estimates an educational integration score based on connectivity, shared
#' activity, and differentiation.
#'
#' This function is inspired by information-integration ideas, but it is not an
#' implementation of Integrated Information Theory and does not compute phi.
#'
#' @param n_components Number of components in the system.
#' @param steps Number of time steps.
#' @param connection_probability Probability of a connection between components.
#' @param coupling Strength of influence among connected components.
#' @param noise Amount of random fluctuation.
#' @param seed Optional random seed.
#' @return A list with a time series, adjacency matrix, and summary score.
#' @export
#' @examples
#' info <- simulate_information_integration(seed = 1)
#' info$summary
simulate_information_integration <- function(n_components = 8, steps = 100,
                                             connection_probability = 0.30,
                                             coupling = 0.40, noise = 0.10,
                                             seed = NULL) {
  check_positive_integer(n_components, "n_components")
  check_positive_integer(steps, "steps")
  check_probability(connection_probability, "connection_probability")
  check_probability(coupling, "coupling")
  if (!is.null(seed)) set.seed(seed)
  adjacency <- matrix(stats::rbinom(n_components * n_components, 1, connection_probability), nrow = n_components)
  diag(adjacency) <- 0
  adjacency <- pmax(adjacency, t(adjacency))
  state <- stats::runif(n_components)
  states <- matrix(NA_real_, nrow = steps, ncol = n_components)
  for (t in seq_len(steps)) {
    influence <- as.numeric(adjacency %*% state)
    if (max(influence) > 0) influence <- influence / max(influence)
    state <- (1 - coupling) * state + coupling * influence + stats::rnorm(n_components, 0, noise)
    state <- rescale01(state)
    states[t, ] <- state
  }
  colnames(states) <- paste0("C", seq_len(n_components))
  cor_mat <- stats::cor(states); cor_mat[is.na(cor_mat)] <- 0
  mean_connectivity <- mean(adjacency)
  shared_information <- mean(abs(cor_mat[upper.tri(cor_mat)]))
  differentiation <- mean(apply(states, 1, stats::sd))
  integration_score <- mean_connectivity * shared_information * differentiation
  time_series <- data.frame(step = rep(seq_len(steps), each = n_components),
                            component = rep(colnames(states), times = steps),
                            activation = as.vector(t(states)))
  list(time_series = time_series, adjacency_matrix = adjacency, correlation_matrix = cor_mat,
       summary = data.frame(mean_connectivity = mean_connectivity, shared_information = shared_information,
                            differentiation = differentiation, integration_score = integration_score))
}
