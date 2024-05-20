#' Western Everglades Restoration Project Boundary
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: USACE - WERP https://www.saj.usace.army.mil/WERP/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(WERPBound)
#' @aliases WERPBound
#'
#' @docType data
#' @keywords dataset
#' @name WERPBound
#' @source USACE
#'
#' @examples
#' library(sf)
#' data(WERPBound)
#' plot(st_geometry(WERPBound))

"WERPBound"
