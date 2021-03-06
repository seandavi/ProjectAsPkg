% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/target_data.R
\name{get_targets}
\alias{get_targets}
\title{Get the target gene expression data}
\usage{
get_targets()
}
\value{
a single-column data.frame with gene expression
measurements, in the same order as features
}
\description{
This function just loads the raw
gene expression data from our raw dataset.
}
\examples{
targ = get_targets()
summary(targ)

}
\references{
\url{https://starbuck1.s3.amazonaws.com/expression-prediction/target.txt}
}
