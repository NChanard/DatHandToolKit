% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rise0.r
\name{Rise0}
\alias{Rise0}
\title{Rise0}
\usage{
Rise0(mat.spm = NULL, which.ndx = NULL, coord.dtf = NULL)
}
\arguments{
\item{mat.spm}{<dgCMatrix or dgCMatrix coercible>: Matrix}

\item{which.ndx}{<numeric> vector of positions of the zeros to be explained (column driven)}

\item{coord.dtf}{<data.frame> a coordinate data frame for zeros to explicit Row index in fisrt column, columns index in second columns.}
}
\value{
Sparse matrix with some explicit zeros
}
\description{
Explicit some implicit zeros
}
\examples{
set.seed(123)
mat.spm = as(matrix(floor(runif(7*13,0,2)),7,13), "dgCMatrix")
mat.spm
Rise0(mat.spm=mat.spm, which.ndx=c(1,3,6,10,12))
Rise0(mat.spm=mat.spm, coord.dtf=data.frame(i=c(1,5,3),  j=c(1,2,3) ) )
Rise0(mat.spm=mat.spm)
}
