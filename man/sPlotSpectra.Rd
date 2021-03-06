\name{sPlotSpectra}
\alias{sPlotSpectra}
\title{s-Plot of Spectra Data Post PCA}

\description{\code{\link{sPlotSpectra}} produces a scatter plot of the correlation of the variables against their covariance for a chosen principal component.  It allows visual identification of variables driving the separation and thus is a useful adjunct to traditional loading plots.}

\usage{sPlotSpectra(spectra, pca, pc = 1, tol = 0.05, ...)}
\arguments{
  \item{spectra}{An object of S3 class \code{\link{Spectra}}.}
  \item{pca}{The result of a pca calculation on \code{\link{Spectra}} (i.e. the output from \code{\link{c_pcaSpectra}} or \code{\link{r_pcaSpectra}}).}
  \item{pc}{An integer specifying the desired pc plot.}
  \item{tol}{A number describing the fraction of points to be labeled.  \code{tol = 1.0} labels all the points; \code{tol = 0.05} labels the most extreme 5 percent.}
  \item{\dots}{Additional parameters to be passed to plotting functions.}
}

\value{A data frame containing the covariance and correlation of the selected pc for the \code{\link{Spectra}} object.  A plot of the correlation vs. covariance is created.}

\references{
Wiklund, Johansson, Sjostrom, Mellerowicz, Edlund, Shockcor, Gottfries, Moritz, and Trygg. "Visualization of GC/TOF-MS-Based Metabololomics Data for Identification of Biochemically Interesting Compounds Usings OPLS Class Models" Analytical Chemistry Vol.80 no.1 pgs. 115-122 (2008).

\url{https://github.com/bryanhanson/ChemoSpec}
}



\author{
Matthew J. Keinsley and Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu} 
}

\examples{
data(SrE.IR)
IR.pca <- c_pcaSpectra(SrE.IR)
myt <- expression(bolditalic(Serenoa)~bolditalic(repens)~bold(IR~Spectra))
splot <- sPlotSpectra(spectra = SrE.IR, pca = IR.pca, pc = 1, tol = 0.005,
main = myt)
}

\keyword{hplot}
