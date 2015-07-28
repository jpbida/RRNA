\name{stemCords}
\alias{stemCords}
\title{
internal function that generates coordinates for a stem
}
\description{
internal function that generates coordinates for an RNA secondary structure stem
}
\usage{
stemCords(input, p1, p2, x1, y1, x2, y2, x3, y3)
}
\arguments{
  \item{input}{
ct file as data frame
}
  \item{p1}{
index of nucleotide in first base pair of the stem
}
  \item{p2}{
index of nucleotide in first base pair of the stem
}
  \item{x1}{
x coordinate of p1
}
  \item{y1}{
y coordinate of p1
}
  \item{x2}{
x coordinate of p2 
}
  \item{y2}{
y coordinate of p2
}
  \item{x3}{
direction vector x component
}
  \item{y3}{
direction vector y component
}
}
\value{
set of points
}
\author{
JP Bida
}
\note{
This is an internal function not recommend for use out side of the ct2coord function
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{ct2coord}}
}
\examples{
### Internal Function ###
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ stem }
\keyword{ RNA }% __ONLY ONE__ keyword per line
