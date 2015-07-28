\name{rotateS}
\alias{rotateS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal function to rotate a single point
}
\description{
Rotates a point a given angle around a given center point.
}
\usage{
rotateS(x2, y2, x0, y0, ang)
}
\arguments{
  \item{x2}{
x coordinate of the position being rotated
}
  \item{y2}{
y coordinate of the position being rotated
}
  \item{x0}{
x coordinate of the center of rotation
}
  \item{y0}{
y coordinate of the center of rotation
}
  \item{ang}{
rotatation angle in radians
}
}
\value{
Returns a rotated point
}
\author{
JP Bida
}

\examples{
### Rotate a point 90 degress ###
rotateS(0,1,0,0,pi/2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ rotation }
