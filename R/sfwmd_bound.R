#' South Florida Water Management District Boundary
#'
#' @description
#' South Florida Water Management District Boundary. This shapefile was queried from a large polygon shapefile that contained the boundary of all Water Management Districts wihtin Florida
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD https://geo-sfwmd.hub.arcgis.com/datasets/sfwmd::water-management-district-boundaries/about
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(sfwmd_bound)
#' @aliases sfwmd_bound
#'
#' @docType data
#' @keywords dataset
#' @name sfwmd_bound
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(sfwmd_bound)
#' plot(st_geometry(sfwmd_bound))
#' }

"sfwmd_bound"
