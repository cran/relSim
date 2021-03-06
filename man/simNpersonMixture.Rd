% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simNpersonMixture.R
\name{simNpersonMixture}
\alias{simNpersonMixture}
\title{Simulate and count unique alleles in N person mixtures}
\usage{
simNpersonMixture(freqs, numContributors, numIterations = 10000)
}
\arguments{
\item{freqs}{a set of allele frequencies. The format can be found in \code{\link{readFreqs}}}

\item{numContributors}{the number of contributors to each mixture. Must be >= 2.}

\item{numIterations}{the number of N person mixtures to simulate in total.}
}
\value{
an object of class npmresult
}
\description{
This function simulates N persons mixtures using the supplied frequencies and records
the number of times they share 1, 2, \ldots, 2N alleles locus by locus.
}
