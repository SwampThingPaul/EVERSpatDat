#' Florida County Boundaries
#'
#' @description
#' Florida county boundary shapefile from `USAboundaries` R-package
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(counties_fl)
#' @aliases counties_fl
#'
#' @docType data
#' @keywords dataset
#' @name counties_fl
#' @source USAboundaries
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(counties_fl)
#' plot(st_geometry(counties_fl))
#' }

"counties_fl"
