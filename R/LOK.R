#' Generalized Lake Okeechobee Boundary
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(LOK)
#' @aliases LOK
#'
#' @docType data
#' @keywords dataset
#' @name LOK
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(LOK)
#' plot(st_geometry(LOK))
#' }

"LOK"
