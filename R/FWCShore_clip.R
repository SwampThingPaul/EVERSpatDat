#' Florida Shoreline 1:12000
#'
#' @description
#' Florida'a shoreline developed by the Florida Fish and Wildlife Conservation Commission and clipped to the SFWMD (with 20km buffer).
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: FL FWC https://geodata.myfwc.com/datasets/myfwc::florida-shoreline-1-to-12000-scale/about
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(FWCShore_clip)
#' @aliases FWCShore_clip
#'
#' @docType data
#' @keywords dataset
#' @name FWCShore_clip
#' @source FWC
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(FWCShore_clip)
#' plot(st_geometry(FWCShore_clip))
#' }

"FWCShore_clip"
