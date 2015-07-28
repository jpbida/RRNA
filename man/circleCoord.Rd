\name{circleCoord}
\alias{circleCoord}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function for finding the coordinates of NT's in a circle
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
circleCoord(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{n} here~~
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
function (n) 
{
    ang = 2 * pi/(n)
    output <- NULL
    output$y[1] = 0
    output$x[1] = 1
    for (i in 1:(n - 1)) {
        v <- rotateS(1, 0, 0, 0, (i * ang))
        j <- i + 1
        output$x[j] <- v[1] + output$x[(j - 1)]
        output$y[j] <- v[2] + output$y[(j - 1)]
    }
    output
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
