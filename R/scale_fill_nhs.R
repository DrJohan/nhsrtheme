#' Fill scale constructor for NHS theme colours
#'
#' @param palette Character name of palette in NHS theme
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#' @export
scale_fill_nhs <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- get_nhs_palette(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("nhstheme_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
