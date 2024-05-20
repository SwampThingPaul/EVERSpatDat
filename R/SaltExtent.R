#' Inland Extent of Saltwater (2018)
#'
#' @description
#' The isoline indicating the extent of saltwater intrusion (as detected in 2018) within Miami-Dade County
#'
#' Data Source: USGS Caribbean-Florida Water Science Center, https://www.sciencebase.gov/catalog/item/5cd0a9ede4b09b8c0b79a53b
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(SaltExtent)
#' @aliases SaltExtent
#'
#' @docType data
#' @keywords dataset
#' @name SaltExtent
#' @source USGS Caribbean-Florida Water Science Center
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(SaltExtent)
#' plot(st_geometry(SaltExtent))
#' }

"SaltExtent"
