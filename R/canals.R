#' South Florida Water Management District Canals
#'
#' @description
#' Simplified South Florida Water Management District Canals
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: FCE LTER repo https://github.com/FCE-LTER/maps_FCE_sites_grayscale_base/tree/main
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(canals)
#' @aliases canals
#'
#' @docType data
#' @keywords dataset
#' @name canals
#' @source FCE LTER
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(canals)
#' plot(st_geometry(canals))
#' }

"canals"
