\name{rotateV}
\alias{rotateV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function to rotate a vector of points
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rotateV(x2, y2, x0, y0, ang)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x2}{
%%     ~~Describe \code{x2} here~~
}
  \item{y2}{
%%     ~~Describe \code{y2} here~~
}
  \item{x0}{
%%     ~~Describe \code{x0} here~~
}
  \item{y0}{
%%     ~~Describe \code{y0} here~~
}
  \item{ang}{
%%     ~~Describe \code{ang} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x2, y2, x0, y0, ang) 
{
    pt <- NULL
    x1 <- x2 - x0
    y1 <- y2 - y0
    pt$x <- x1 * cos(ang) - y1 * sin(ang) + x0
    pt$y <- y1 * cos(ang) + x1 * sin(ang) + y0
    pt
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
