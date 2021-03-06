#' Add a base map from mapbox to the map widget
#'
#' @inheritParams add_layer
#' @param token mapbox api access token
#' @param style map style
#' @export
add_mapbox_basemap <- function(map, token = Sys.getenv("MAPBOX_API_TOKEN"), style = "mapbox://styles/mapbox/light-v9") {
  modify_map_parameters(map, style = style, mapboxAccessToken = token)
}

#' Add a base map from carto to the map widget
#'
#' @inheritParams add_mapbox_basemap
#' @param style map style, one of \code{darkmatter}, \code{positron} or \code{voyager}
#' @export
add_carto_basemap <- function(map, style = "darkmatter") {
  modify_map_parameters(map, style = CARTO_BASEMAPS[[style]])
}

CARTO_BASEMAPS <- list(
  darkmatter = htmlwidgets::JS("carto.basemaps.darkmatter"),
  positron = htmlwidgets::JS("carto.basemaps.positron"),
  voyager = htmlwidgets::JS("carto.basemaps.voyager")
)
