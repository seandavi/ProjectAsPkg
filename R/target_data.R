#' Get the target gene expression data
#'
#' This function just loads the raw
#' gene expression data from our raw dataset.
#'
#' @references
#' \url{https://starbuck1.s3.amazonaws.com/expression-prediction/target.txt}
#'
#' @return a single-column data.frame with gene expression
#' measurements, in the same order as features
#'
#' @examples
#' targ = get_targets()
#' summary(targ)
#'
#' @export
get_targets = function() {
  # substitute YOUR package name below
  fileloc = system.file('extdata/target.txt', package='ProjectAsPkg')
  read.table(fileloc, header = TRUE)
}
