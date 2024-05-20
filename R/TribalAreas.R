#' Florida Tribal Areas
#'
#' @description
#' A subset of the Tribal lands as identified in the TIGER American Indian Lands 2020.
#'
#' For purposes of this package, data is reprojected from WGS84 to UTM17N.
#'
#' Data Source: TIGER https://geodata.floridagio.gov/datasets/9b310e43e31d498098b6ef0e47534800/explore
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(TribalAreas)
#' @aliases TribalAreas
#'
#' @docType data
#' @keywords dataset
#' @name TribalAreas
#' @source TIGER
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(TribalAreas)
#' plot(st_geometry(TribalAreas))
#' }

"TribalAreas"
