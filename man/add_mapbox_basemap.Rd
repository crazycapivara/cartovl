% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basemaps.R
\name{add_mapbox_basemap}
\alias{add_mapbox_basemap}
\title{Add a base map from mapbox to the map widget}
\usage{
add_mapbox_basemap(map, token = Sys.getenv("MAPBOX_API_TOKEN"),
  style = "mapbox://styles/mapbox/light-v9")
}
\arguments{
\item{map}{map widget created by \link{cartovl}}

\item{token}{mapbox api access token}

\item{style}{map style}
}
\description{
Add a base map from mapbox to the map widget
}
