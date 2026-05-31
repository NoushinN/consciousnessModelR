#' Plot a consciousnessModelR simulation output
#'
#' `plot_consciousness_sim()` creates a simple line plot from a simulation result.
#'
#' @param data A data frame.
#' @param x Column name for the x-axis.
#' @param y Column name for the y-axis.
#' @param group Optional grouping column.
#' @return A ggplot object.
#' @export
#' @importFrom ggplot2 ggplot aes geom_line geom_point labs theme_minimal
#' @examples
#' sim <- simulate_global_workspace(seed = 1)
#' plot_consciousness_sim(sim, x = "step", y = "activation", group = "process")
plot_consciousness_sim <- function(data, x, y, group = NULL) {
  if (!is.data.frame(data)) stop("data must be a data frame.", call. = FALSE)
  if (!x %in% names(data)) stop("x column not found in data.", call. = FALSE)
  if (!y %in% names(data)) stop("y column not found in data.", call. = FALSE)
  if (!is.null(group) && !group %in% names(data)) stop("group column not found in data.", call. = FALSE)
  if (is.null(group)) {
    ggplot2::ggplot(data, ggplot2::aes(x = .data[[x]], y = .data[[y]])) +
      ggplot2::geom_line() + ggplot2::geom_point() + ggplot2::theme_minimal() + ggplot2::labs(x = x, y = y)
  } else {
    ggplot2::ggplot(data, ggplot2::aes(x = .data[[x]], y = .data[[y]], group = .data[[group]])) +
      ggplot2::geom_line() + ggplot2::theme_minimal() + ggplot2::labs(x = x, y = y)
  }
}
