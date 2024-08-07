% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fws_clipped.R
\docType{data}
\name{refuges_clipped}
\alias{refuges_clipped}
\title{US Fish and Wildlife Service Refuges}
\format{
An object of class \code{sf} (inherits from \code{data.frame}) with 3 rows and 22 columns.
}
\source{
FWS
}
\usage{
data(refuges_clipped)
}
\description{
For purposes of this package, data is reprojected from WGS84 to UTM17N.

Data Source: FWS https://gis-fws.opendata.arcgis.com/datasets/fws::fws-national-realty-approved-acquisition-boundaries/
\describe{
\item{epsg}{EPSG:26917; NAD83 UTM17N}
}
}
\examples{
\dontrun{
library(sf)
data(refuges_clipped)
plot(st_geometry(refuges_clipped))
}
}
\keyword{dataset}
