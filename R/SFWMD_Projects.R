#' South Florida Water Management District Projects
#'
#' @description
#' South Florida Water Management District surface water project boundary.
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD https://geo-sfwmd.hub.arcgis.com/datasets/sfwmd::sfwmd-surface-water-projects-and-components/about
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(SFWMD_Projects)
#' @aliases SFWMD_Projects
#'
#' @docType data
#' @keywords dataset
#' @name SFWMD_Projects
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(SFWMD_Projects)
#' plot(st_geometry(SFWMD_Projects))
#' }

"SFWMD_Projects"
