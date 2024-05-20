#' US Fish and Wildlife Service Refuges
#'
#' @description
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: FWS https://gis-fws.opendata.arcgis.com/datasets/fws::fws-national-realty-approved-acquisition-boundaries/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(refuges_clipped)
#' @aliases refuges_clipped
#'
#' @docType data
#' @keywords dataset
#' @name refuges_clipped
#' @source FWS
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(refuges_clipped)
#' plot(st_geometry(refuges_clipped))
#' }

"refuges_clipped"
