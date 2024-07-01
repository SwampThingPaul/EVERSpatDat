#'  Central Everglades Planning
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: Conceptually USACE, digitized by P Julian
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(CEPP)
#' @aliases CEPP
#'
#' @docType data
#' @keywords dataset
#' @name CEPP
#' @source PJ
#'
#' @examples
#' library(sf)
#' data(CEPP)
#' plot(st_geometry(CEPP))

"CEPP"
