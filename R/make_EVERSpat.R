
#' List of data in the EVERSpatDat library
#'
#' @return list of available Everglades related shapefiles.
#' @export
#'
#' @examples
#' make_EVERSpat()
make_EVERSpat <- function() {
  datalist<-data(package = "EVERSpatDat")
  datalist <- datalist$results
  class(datalist) <- "EVERSpat"
  return(datalist)
}
