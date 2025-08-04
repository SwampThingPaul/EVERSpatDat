
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


#' print a EVERSpat object
#'
#' @param x EVERSpat object
#' @param ... further arguments passed to or from other methods.
#'
#' @export

print.EVERSpat <- function(x, ...) {
  print(x[, 3], ...)
}
