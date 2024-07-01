#'  Lake Okeechobee Watershed Restoration Project
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: USACE and redigitized by P Julian
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(LOWRP)
#' @aliases LOWRP
#'
#' @docType data
#' @keywords dataset
#' @name LOWRP
#' @source USACE + PJ
#'
#' @examples
#' library(sf)
#' data(LOWRP)
#' plot(st_geometry(LOWRP))

"LOWRP"
