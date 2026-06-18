#' Joint Ecosystem Modeling Everglades Forecast Regions
#'
#' @description
#' **Abstract:** This shapefile is an updated version of the ecological units map created
#' by Deuver et al. (1978). The updates were based upon what scientists and
#' resource managers continue to learn about the geology and hydrology of
#' southern Florida since the 1970’s. The boundaries were defined using
#' two sources of information: hydrologic basin boundaries for
#' Big Cypress (Freiberger 1972), and a 1999 vegetation
#' map (University of Georgia; Welch et al. 1999). The updated map helps
#' define the landscape types that occur in the northern Addition
#' Lands (127,773 ac) and the ecologically meaningful boundaries
#' within the preserve.The Big Cypress map was joined with Everglades
#' National Park physiographic regions and Water Conservation Area regions.
#'
#' **Credit:** John Kellam, Bob Sobczak, Steve Schulze, Jed Redwine,
#'  Mario Londono, and other NR staff at Big Cypress created
#'  this shapefile. Duever et al. (1978) ecological regions map
#'  for Big Cypress was used as a starting point for creating this
#'  map. Mario Londono digitized Duever's initial map.
#'
#'  **Lineage:** (from shapefile xml)
#'  File was initially created by merging shapefiles
#'  * 2014_BICY_watershed_units_NRCA
#'  * ENP_Physiographic_aggregate_v3
#'  * (second merge) WCA3_CEPP
#'  * (third merge) WCAs_MergeWCA2
#'
#'
#' Data Source: JEM https://www.jem.gov/EverForecast
#' \describe{
#' \item{epsg}{EPSG:26917; NAD83 UTM17N}
#' }
#'
#' @usage data(JEM_E4C_region)
#' @aliases JEM_E4C_region
#'
#' @docType data
#' @keywords dataset
#' @name JEM_E4C_region
#' @source JEM
#'
#' @examples
#' \dontrun{
#' library(sf)
#' data(JEM_E4C_region)
#' plot(st_geometry(JEM_E4C_region))
#' }

"JEM_E4C_region"
