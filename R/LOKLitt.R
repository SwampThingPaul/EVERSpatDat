#' Generalized Lake Okeechobee Littoral Zone Boundary
#'
#' @description
#' Generalized extent of the littoral zone in Lake Okeechobee based on vegetation surveys
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(LOKLitt)
#' @aliases LOKLitt
#'
#' @docType data
#' @keywords dataset
#' @name LOKLitt
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(LOKLitt)
#' plot(st_geometry(LOKLitt))
#' }

"LOKLitt"
