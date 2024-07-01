#'  Lake Okeechobee System Operating Manual
#'
#' @description
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: USACE and redigitizing by P Julian
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(LOSOM)
#' @aliases LOSOM
#'
#' @docType data
#' @keywords dataset
#' @name LOSOM
#' @source USACE & PJ
#'
#' @examples
#' library(sf)
#' data(LOSOM)
#' plot(st_geometry(LOSOM))

"LOSOM"
