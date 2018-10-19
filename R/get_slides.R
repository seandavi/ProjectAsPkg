#' Load the background slides
#'
#' This is a helper function that simply tries
#' to load the background slides for the experiment.
#' In a local environment, this function will likely
#' load the slides into Powerpoint. In others, it may
#' just "download" the slides which you can open yourself.
#'
#' This is an example of how you can include arbitrary files
#' in R packages.
#'
#' @references
#' \url{http://starbuck1.s3.amazonaws.com/expression-prediction/Expression_prediction_slides.pptx}
#'
#' @examples
#' \dontrun{
#' get_slides()
#' }
#'
#' @export
get_slides = function() {
  # substitute YOUR package name below
  fileloc = system.file('extdata/Expression_prediction_slides.pptx', package='ProjectAsPkg')
  browseURL(fileloc)
}
