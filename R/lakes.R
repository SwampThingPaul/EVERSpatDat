#' Lakes
#'
#' @description
#' Lakes from the South Florida Water Management District AHED Waterbodies shapefile.
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: SFWMD https://geodata.floridagio.gov/datasets/46a54d27c6bb4779bba9e87399eb343f_0/about
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(lakes)
#' @aliases lakes
#'
#' @docType data
#' @keywords dataset
#' @name lakes
#' @source SFWMD
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(lakes)
#' plot(st_geometry(lakes))
#' }

"lakes"
