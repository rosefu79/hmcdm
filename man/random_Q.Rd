% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{random_Q}
\alias{random_Q}
\title{Generate random Q matrix}
\usage{
random_Q(J, K)
}
\arguments{
\item{J}{An \code{int} that represents the number of items}

\item{K}{An \code{int} that represents the number of attributes/skills}
}
\value{
A dichotomous \code{matrix} for Q.
}
\description{
Creates a random Q matrix containing three identity matrices after row permutation
}
\examples{
random_Q(15,4)
}
