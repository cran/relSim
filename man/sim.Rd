% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sim.R
\name{sim}
\alias{sim}
\title{Perform the relatives simulation}
\usage{
sim(N, Freqs, rel = "UN", save = FALSE, strPath = "", strVer = "",
  BlockSize = N/100, fileName = NULL)
}
\arguments{
\item{N}{The number of iterations to carry out}

\item{Freqs}{A list containing two lists labelled loci and freqs. The second
list is a list of vectors containing the allele frequencies of each allele
at each locus in the multiplex.}

\item{rel}{generate unrelated (\code{rel = 'UN'}), full-sibs (\code{rel =
'FS'}), or parent child (\code{rel = 'PC'}) pairs}

\item{save}{Write the results to disk if \code{TRUE}}

\item{strPath}{Optional prefix to add to the results file path so that the
output location can be specified}

\item{strVer}{Optional suffix for the results file. This is useful when
running multiple instances of R}

\item{BlockSize}{Sets the number of random profiles to be generated in each
iteration. By default the block size is set to 1 percent of the total sample
size. It is unclear whether the procedure is more efficient if a bigger
percentage of the total is used. Users must take care to make sure that the
block size evenly divides \code{N} otherwise the procedure will exit}

\item{fileName}{This argument lets the user override the default result file
naming scheme}
}
\value{
a data frame with three columns: sib, pc, ibs containing the LRs for
full-siblings, parent-child, and the number of matching alleles for each
generated pair of profiles.
}
\description{
Generate N pairs with a given relationship and calculate the LR for sibs,
parent-child and the number of matching alleles
}
\details{
This is the function that generates all the data for the results in the
paper. WARNING: this function is not especially fast. To achieve the 100
million iterations used in the paper, 30 instances of R were launched on a
multicore server. Each instance represented one relationship with 10 million
iterations. The compute time for this arrangement was approximately 1 hours,
meaning a full serial run would have taken over 30 hours to achieve the same
result.
}
\examples{

## not run
## this replicates Ge et al.'s experiment and takes about 45 minutes
## to run (I think)
\dontrun{
data(fbiCaucs)
N = 1000000
sim(N, fbiCaucs, save = T)
sim(N, fbiCaucs, 'FS', save = T)
sim(N, fbiCaucs, 'PC', save = T)
}

}
\seealso{
readResults, errorRate
}
\author{
James M. Curran
}
