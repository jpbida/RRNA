\name{transformFold}
\alias{transformFold}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal function to translate and rotate a secondary structure plot
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
transformFold(dat, x0, y0, ang)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
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
function (dat, x0, y0, ang) 
{
    x <- dat$x
    y <- dat$y
    new <- rotateV(x, y, x0, y0, ang)
    dat$x <- new$x
    dat$y <- new$y
    dat
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
