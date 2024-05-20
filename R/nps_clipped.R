#' National Park Service areas in Everglades region
#'
#' @description
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: NPS https://public-nps.opendata.arcgis.com/datasets/nps-boundary-1/explore
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(nps_clipped)
#' @aliases nps_clipped
#'
#' @docType data
#' @keywords dataset
#' @name nps_clipped
#' @source NPS
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(nps_clipped)
#' plot(st_geometry(nps_clipped))
#' }

"nps_clipped"
