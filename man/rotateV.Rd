\name{rotateV}
\alias{rotateV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function to rotate a vector of points
}
\description{
Rotates a set of points around a center point a given number of radians
}
\usage{
rotateV(x2, y2, x0, y0, ang)
}
\arguments{
  \item{x2}{
Vector containing x coordinates being rotated
}
  \item{y2}{
Vector containing y coordinates being rotated
}
  \item{x0}{
x coordinate of center of rotation
}
  \item{y0}{
y coordinate of center of rotation
}
  \item{ang}{
Angle of rotation given in radians
}
}
\value{
set of rotated points
}
\author{
JP Bida
}
\seealso{
\code{\link{rotateS}}
}
\examples{
x=c(1,0,-1,0)
y=c(0,1,0,-1)
pts=rotateV(x,y,0,0,pi/4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ rotate }
\keyword{ vector }% __ONLY ONE__ keyword per line
