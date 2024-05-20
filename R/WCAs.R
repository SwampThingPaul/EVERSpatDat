#' SFWMD Water Conservation Areas
#'
#' @description
#' A subset of the SFWMD watersheds file to only include the Water Conservation Areas
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD https://geo-sfwmd.hub.arcgis.com/datasets/sfwmd::ahed-watersheds/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(WCAs)
#' @aliases WCAs
#'
#' @docType data
#' @keywords dataset
#' @name WCAs
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(WCAs)
#' plot(st_geometry(WCAs))
#' }

"WCAs"
