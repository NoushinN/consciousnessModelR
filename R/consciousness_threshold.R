#' Apply a simplified awareness threshold model
#'
#' `consciousness_threshold()` evaluates whether activation values cross a
#' threshold for awareness-like processing.
#'
#' @param data A data frame containing activation values.
#' @param activation_col Name of the activation column.
#' @param threshold Numeric threshold value.
#' @return The input data frame with threshold columns added.
#' @export
#' @examples
#' sim <- simulate_global_workspace(seed = 1)
#' consciousness_threshold(sim, activation_col = "activation", threshold = 0.7)
consciousness_threshold <- function(data, activation_col = "activation", threshold = 0.70) {
  if (!is.data.frame(data)) stop("data must be a data frame.", call. = FALSE)
  if (!activation_col %in% names(data)) stop("activation_col was not found in data.", call. = FALSE)
  check_probability(threshold, "threshold")
  x <- data[[activation_col]]
  data$threshold <- threshold
  data$above_threshold <- x >= threshold
  data$threshold_distance <- x - threshold
  data
}
