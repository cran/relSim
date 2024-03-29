% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readProfiles.R
\name{readProfiles}
\alias{readProfiles}
\title{Read a set of profiles from a file}
\usage{
readProfiles(
  fileName,
  freqs = NULL,
  sep = "\\t",
  header = FALSE,
  id = 1,
  discardMissing = TRUE
)
}
\arguments{
\item{fileName}{a path to the profile file.}

\item{freqs}{A list containing two lists labelled loci and freqs. The second
list is a list of vectors containing the allele frequencies of each allele
at each locus in the multiplex. If this is left \code{NULL}, then it is calculated from 
the profile file.}

\item{sep}{a character that delimits the fields in the profile file.}

\item{header}{a boolean which is \code{TRUE} if the profile file has a column header line.}

\item{id}{a column number indicating which column the profile id's are stored. If \code{id == -1}, then this means there is no id information.}

\item{discardMissing}{if \code{TRUE}, then all profiles which have alleles which cannot be matched to the frequency file are ommitted and returned
in the return list.}
}
\value{
a list containing a \code{data.frame} of profiles where the alleles have been recoded 
to the allele index number, rather than the allele itself, and a set of frequencies in the same
format as you would get from \code{\link{readFreqs}}. If \code{freqs} have been supplied, then this 
will just be the same set of frequencies, if they have not, then this will be calculated
from the profiles. Given that the profiles generally do not have any locus name information
the loci will just be labelled Locus1, Locus2, \ldots. If there are missing values then the raw missing profiles are returned
}
\description{
Reads a set of profiles from a file
}
\details{
The alleles are recorded integers rather than the STR repeat numbers. This
speeds up computation immensely when calculating any of the LRs or IBS.
}
\author{
James M. Curran
}
