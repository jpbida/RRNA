\name{genCords}
\alias{genCords}
\title{
Internal function that generates coordinates for a given loop starting and stopping at p1 and p2 respectfully
}
\description{
Generates coordinates for a loop in a secondary structure. Internal function used by RNAPlot.
}
\usage{
genCords(loop, p1, p2, input, vn)
}
\arguments{
  \item{loop}{
List contianing a data frame that has the subset of nucleotides in a given loop
}
  \item{p1}{
The position of the first nucleotide in the loop
}
  \item{p2}{
The position of the second nucleotide in the loop
}
  \item{input}{
The data frame contianing the coordinate file for the entire RNA secondary structure 
}
  \item{vn}{
A flag that flips over y axis if vn = 1. 
}
}
\value{
Returns a set of points
}
\author{
JP Bida
}
\examples{
### This is an internal function ###
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ loop }% __ONLY ONE__ keyword per line
