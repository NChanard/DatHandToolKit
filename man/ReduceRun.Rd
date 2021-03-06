% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ReduceRun.r
\name{ReduceRun}
\alias{ReduceRun}
\title{ReduceRun}
\usage{
ReduceRun(first.rle, second.rle, reduceFun.chr = "paste", ...)
}
\arguments{
\item{first.rle}{<matrix>: first rle}

\item{second.rle}{<matrix>: second rle}

\item{reduceFun.chr}{<character>: name of a function to apply e.g paste, sum, mean.}

\item{...}{<...>: Other parameter for the reduce function}
}
\value{
reduced Rle
}
\description{
apply a function to the values of two RLE. e.g paste, sum, mean
}
\examples{
first.rle = rle(c("A","A","B"))
second.rle = rle(c("A","B","B"))
ReduceRun(first.rle=first.rle, second.rle=second.rle, reduceFun.chr="paste", sep="_" )
first.rle = Rle(c(1,2,3))
second.rle = Rle(c(5,5,5))
ReduceRun(first.rle=first.rle, second.rle=second.rle, reduceFun.chr="sum")
}
