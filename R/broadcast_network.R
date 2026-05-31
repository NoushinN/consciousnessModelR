#' Simulate broadcast across a simple network
#'
#' `broadcast_network()` simulates how a selected signal spreads through a
#' network after entering a simplified global workspace.
#'
#' @param n_nodes Number of network nodes.
#' @param steps Number of simulation time steps.
#' @param source_node Node where the broadcast begins.
#' @param connection_probability Probability that two nodes are connected.
#' @param spread_rate Rate at which activation spreads along connections.
#' @param decay Proportion of activation lost at each step.
#' @param seed Optional random seed.
#' @return A list with `time_series` and `adjacency_matrix`.
#' @export
#' @examples
#' net <- broadcast_network(seed = 1)
#' head(net$time_series)
broadcast_network <- function(n_nodes = 10, steps = 50, source_node = 1,
                              connection_probability = 0.30, spread_rate = 0.25,
                              decay = 0.10, seed = NULL) {
  check_positive_integer(n_nodes, "n_nodes")
  check_positive_integer(steps, "steps")
  check_probability(connection_probability, "connection_probability")
  check_probability(spread_rate, "spread_rate")
  check_probability(decay, "decay")
  if (source_node < 1 || source_node > n_nodes) stop("source_node must be between 1 and n_nodes.", call. = FALSE)
  if (!is.null(seed)) set.seed(seed)
  adjacency <- matrix(stats::rbinom(n_nodes * n_nodes, 1, connection_probability), nrow = n_nodes)
  diag(adjacency) <- 0
  adjacency <- pmax(adjacency, t(adjacency))
  activation <- rep(0, n_nodes); activation[source_node] <- 1
  out <- vector("list", steps)
  for (t in seq_len(steps)) {
    incoming <- as.numeric(adjacency %*% activation)
    if (max(incoming) > 0) incoming <- incoming / max(incoming)
    activation <- pmin(activation * (1 - decay) + spread_rate * incoming, 1)
    out[[t]] <- data.frame(step = t, node = paste0("N", seq_len(n_nodes)), activation = activation,
                           source_node = paste0("N", source_node))
  }
  list(time_series = do.call(rbind, out), adjacency_matrix = adjacency)
}
