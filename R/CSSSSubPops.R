#'  Cape Sable Seaside Sparrow Subpopulations
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: USGS - EverSparrow model - https://www.sciencebase.gov/catalog/item/611c57f1d34e40dd9c00029b
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(CSSSSubpops)
#' @aliases CSSSSubpops
#'
#' @docType data
#' @keywords dataset
#' @name CSSSSubpops
#' @source Haider, S.M., Romañach, S.S., Benscoter, A.M., D'Acunto, L.E., and Pearlstine, L.G., 2021, EverSparrow model scripts and outputs: U.S. Geological Survey data release, https://doi.org/10.5066/P9VNZH7I.
#'
#' @examples
#' library(sf)
#' data(CSSSSubpops)
#' plot(st_geometry(CSSSSubpops))

"CSSSSubpops"
