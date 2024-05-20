#'  Biscayne Bay and Southeastern Everglades Ecosystem Restoration Project Boundary
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: USACE - WERP https://www.saj.usace.army.mil/BBSEER/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(BBSEERBound)
#' @aliases BBSEERBound
#'
#' @docType data
#' @keywords dataset
#' @name BBSEERBound
#' @source USACE
#'
#' @examples
#' library(sf)
#' data(BBSEERBound)
#' plot(st_geometry(BBSEERBound))

"BBSEERBound"
