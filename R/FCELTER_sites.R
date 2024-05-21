#' FCE LTER long-term monitoring sites
#'
#' @description
#' Long term monitoring locaiton within Shark River Slough, Taylor Slough and Florida Bay
#'
#' Data Source: FCE LTER https://fce-lter.fiu.edu/data/GIS/
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(FCELTER_sites)
#' @aliases FCELTER_sites
#'
#' @docType data
#' @keywords dataset
#' @name FCELTER_sites
#' @source FCE LTER
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(FCELTER_sites)
#' plot(st_geometry(FCELTER_sites))
#' }

"FCELTER_sites"
