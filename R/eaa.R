#' SFWMD Everglades Agricultural Area (EAA) Boundary
#'
#' @description
#' The generlized spatial extents (boundary) of the "Everglades Agricultural Area" or "EAA" as describe in Florida Statute 373.4592
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD https://geo-sfwmd.hub.arcgis.com/datasets/sfwmd::everglades-agricultural-area-eaa-boundary/about
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(eaa)
#' @aliases eaa
#'
#' @docType data
#' @keywords dataset
#' @name eaa
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(eaa)
#' plot(st_geometry(eaa))
#' }

"eaa"
