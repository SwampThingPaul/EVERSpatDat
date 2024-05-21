#' Tamiami Trail Bridges
#'
#' @description
#' Three line segements identifing the 2.5 mile and 1 mile bridges along US-41/Tamiami Trail north of Everlgades National Park
#'
#' Data Source: FCE LTER https://fce-lter.fiu.edu/data/GIS/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(TTBridge)
#' @aliases TTBridge
#'
#' @docType data
#' @keywords dataset
#' @name TTBridge
#' @source FCE LTER
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(TTBridge)
#' plot(st_geometry(TTBridge))
#' }

"TTBridge"
