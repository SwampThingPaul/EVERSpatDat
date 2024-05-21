#' General delineation of Shark River and Taylor Sloughs within Everglades National Park
#'
#' @description
#' General delineation of the two major drainages within Everglades National Park
#'
#' Data Source: FCE LTER https://fce-lter.fiu.edu/data/GIS/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(sloughs)
#' @aliases sloughs
#'
#' @docType data
#' @keywords dataset
#' @name sloughs
#' @source FCE LTER
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(sloughs)
#' plot(st_geometry(sloughs))
#' }

"sloughs"
