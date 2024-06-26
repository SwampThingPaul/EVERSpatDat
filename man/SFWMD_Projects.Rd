% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SFWMD_Projects.R
\docType{data}
\name{SFWMD_Projects}
\alias{SFWMD_Projects}
\title{South Florida Water Management District Projects}
\format{
An object of class \code{sf} (inherits from \code{data.frame}) with 171 rows and 36 columns.
}
\source{
SFWMD
}
\usage{
data(SFWMD_Projects)
}
\description{
South Florida Water Management District surface water project boundary.

For purposes of this package, data is reprojected from WGS84 to UTM17N.

Data Source: SFWMD https://geo-sfwmd.hub.arcgis.com/datasets/sfwmd::sfwmd-surface-water-projects-and-components/about
\describe{
\item{epsg}{EPSG:26917; NAD83 UTM17N}
}
}
\examples{
\dontrun{
library(sf)
data(SFWMD_Projects)
plot(st_geometry(SFWMD_Projects))
}
}
\keyword{dataset}
