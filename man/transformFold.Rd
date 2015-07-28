\name{transformFold}
\alias{transformFold}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal function to translate and rotate a secondary structure plot
}
\description{
Given a coordinate file, a point, and an angle in radians transformFold rotates the fold around the given point the given number of radians.  
}
\usage{
transformFold(dat, x0, y0, ang)
}
\arguments{
  \item{dat}{
Coordinate file containing multiple RNA folds
}
  \item{x0}{
x coordinate of center of rotation
}
  \item{y0}{
y coordinate of center of rotation
}
  \item{ang}{
angle of rotation in radians
}
}
\value{
dat frame containing the rotated coordinates
}
\author{
JP Bida
}

\seealso{
\code{\link{alignCoord}}
}
\examples{

ct=makeCt("((((...(((((((.........)))))))...((((.........))))...))))",
          "AAAAAAAACCCCCCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC")

c1=ct2coord(ct)

RNAPlot(c1)

c2=transformFold(c1,0,0,pi/2)
c3=transformFold(c2,0,0,pi/2)
c4=transformFold(c3,0,0,pi/2)

RNAPlot(c2,add=TRUE)
RNAPlot(c3,add=TRUE)
RNAPlot(c4,add=TRUE)

}

\keyword{ RNA }
\keyword{ transform }% __ONLY ONE__ keyword per line
