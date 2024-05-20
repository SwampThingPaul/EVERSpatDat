#' Everglades Protection Area Boundary
#'
#' @description
#' As defined in 40E-63 FAC. Shapefiles have been merged into a single boundary file.
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD https://geo-sfwmd.hub.arcgis.com/datasets/78f52a0996a14d55ac411dc7ee2ec002_0/explore?location=25.755687%2C-80.870991%2C8.68
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(EvPA)
#' @aliases EvPA
#'
#' @docType data
#' @keywords dataset
#' @name EvPA
#' @source SFWMD
#'
#' @examples
#' library(sf)
#' data(EvPA)
#' plot(st_geometry(EvPA))


"EvPA"
