\name{hcaSpectra}
\Rdversion{1.1}
\alias{hcaSpectra}

\title{
Plot HCA Results of a Spectra Object
}
\description{
A wrapper which carries out HCA and plots a dendrogram colored by the information in a \code{"Spectra"} object.  All methods for computing the cluster distances are available.
}
\usage{
hcaSpectra(spectra, title = "no title provided",
method = "complete", ...)
}
\arguments{
  \item{spectra}{
An object of S3 class \code{"Spectra"}.
}
  \item{title}{
A character string for the plot title.
}
  \item{method}{
A character string acceptable as a method in \code{\link{hclust}}.
}
  \item{\dots}{
Other parameters to be passed to the plotting functions.
}
}
\value{
None.  The side effect is a plot.
}

\section{Calls}{\code{\link{chkSpectra}}, \code{\link{colLeaf}}}
\section{Called by}{Top level function, called by user.}

\references{
\url{http://academic.depauw.edu/~hanson/ChemoSpec/ChemoSpec.html}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\seealso{
\code{\link{hclust}} for the underlying function.
\code{\link{hcaScores}} for similar analysis of PCA scores from a \code{"Spectra"} object.
}
\examples{
data(CuticleIR)
hcaSpectra(CuticleIR, title = "Cuticle IR Spectra", method = "complete")
}
\keyword{ multivariate }
\keyword{ cluster }