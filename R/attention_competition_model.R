#' Simulate attention competition among signals
#'
#' `attention_competition_model()` simulates how signals may compete for
#' priority based on salience, novelty, goal relevance, and noise.
#'
#' @param n_signals Number of competing signals.
#' @param steps Number of simulation time steps.
#' @param salience Optional numeric vector of signal salience values.
#' @param novelty Optional numeric vector of signal novelty values.
#' @param goal_relevance Optional numeric vector of goal relevance values.
#' @param weights Numeric vector of length 3 giving weights for salience, novelty, and goal relevance.
#' @param noise Standard deviation of random noise.
#' @param seed Optional random seed.
#' @return A data frame with one row per signal per step.
#' @export
#' @examples
#' attn <- attention_competition_model(seed = 1)
#' head(attn)
attention_competition_model <- function(n_signals = 6, steps = 100, salience = NULL,
                                        novelty = NULL, goal_relevance = NULL,
                                        weights = c(0.4, 0.3, 0.3), noise = 0.10,
                                        seed = NULL) {
  check_positive_integer(n_signals, "n_signals")
  check_positive_integer(steps, "steps")
  if (!is.null(seed)) set.seed(seed)
  if (is.null(salience)) salience <- stats::runif(n_signals)
  if (is.null(novelty)) novelty <- stats::runif(n_signals)
  if (is.null(goal_relevance)) goal_relevance <- stats::runif(n_signals)
  if (length(weights) != 3) stop("weights must have length 3.", call. = FALSE)
  if (length(salience) != n_signals || length(novelty) != n_signals || length(goal_relevance) != n_signals) {
    stop("salience, novelty, and goal_relevance must have length n_signals.", call. = FALSE)
  }
  out <- vector("list", steps)
  for (t in seq_len(steps)) {
    priority <- weights[1] * salience + weights[2] * novelty + weights[3] * goal_relevance + stats::rnorm(n_signals, 0, noise)
    priority <- rescale01(priority)
    selected <- which.max(priority)
    out[[t]] <- data.frame(step = t, signal = paste0("S", seq_len(n_signals)), salience = salience,
                           novelty = novelty, goal_relevance = goal_relevance,
                           priority = priority, selected = seq_len(n_signals) == selected,
                           selected_signal = paste0("S", selected))
    novelty <- pmax(0, novelty - 0.02)
    novelty[selected] <- pmax(0, novelty[selected] - 0.10)
  }
  do.call(rbind, out)
}
