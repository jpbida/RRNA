\name{RRNA-package}
\alias{RRNA-package}
\alias{RRNA}
\docType{package}
\title{
RNA secondary structure ploting
}
\description{
Set of functions for creating and manipulating RNA secondary structure plots from CT files or bracket notations.  
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
\keyword{ package }
\examples{
### Create a CT file from bracket notation
ct=makeCt("(((...(((...)))...(((...)))...)))","AAAUUUCCCAAAGGGUUUAAAGGGUUUCCCUUU")
coord=ct2coord(ct)
RNAPlot(coord,hl=c("GGGUUU","AAAUUU"),seqcols=c(2,4),labTF=TRUE)
}
