#' Load histone mark features, predictors
#'
#' This is a helper function that simply loads the
#' the histone marks, one row
#' per gene. Marks are given as column names. Row
#' names are some strange mix of Ensembl IDs and junk.
#'
#' @references
#' \url{http://starbuck1.s3.amazonaws.com/expression-prediction/features.txt}
#'
#' @return a data.frame with histone marks in columns
#' and one row per gene. Gene names are row names.
#'
#' @examples
#' feat = get_features()
#' head(feat)
#' # Do some multidimensional scaling
#' mds = cmdscale(dist(t(as.matrix(feat))))
#' plot(mds, type='n')
#' text(mds, labels=rownames(mds))
#' # limit to top 500 most variable "genes"
#' sds = apply(feat, 1, sd)
#' feat_500 = feat[order(sds, decreasing=TRUE)[1:500], ]
#' heatmap(as.matrix(feat_500))
#'
#' @export
get_features = function() {
  # substitute YOUR package name below
  fileloc = system.file('extdata/features.txt', package='ProjectAsPkg')
  read.table(fileloc)
}
