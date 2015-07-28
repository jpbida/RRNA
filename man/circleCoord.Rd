\name{circleCoord}
\alias{circleCoord}
\title{
Internal function for finding the coordinates of NT's in a circle
}
\description{
Given an integer N the function returns N (x,y) coordinates for a polygon with N sides each of length 1. This is used to plot the loops in an RNA structure
}
\usage{
circleCoord(n)
}
\arguments{
  \item{n}{
Integer determining the number of sides
}
}
\value{
Data frame with columns x,y defining coordinates of the polygons
}
\author{
JP Bida
}

\examples{
pts=circleCoord(10)
plot(pts$x,pts$y)
}
\keyword{ polygon }
\keyword{ RNA }% __ONLY ONE__ keyword per line
