\name{RRNA-package}
\alias{RRNA-package}
\alias{RRNA}
\docType{package}
\title{
RRNA is a R package for plotting and manipulating RNA secondary structures.
}
\description{
RRNA can take inputs from Vienna RNA or any secondary structure program that 
produces CT files and let's you make plots of them directly in R. 
}
\details{
\tabular{ll}{
Package: \tab RRNA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-07-27\cr
License: \tab GPL-3\cr
}

}
\author{
JP Bida
Maintainer: JP Bida <bida.john@gmail.com
}
\references{
}
\keyword{ package }
\seealso{
}
\examples{
\code{
ct=makeCT("AAAAGGUUUU","((((..))))")
coord=ct2coord(ct)
RNAPlot(coord)
}
}
}
