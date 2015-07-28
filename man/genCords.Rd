\name{genCords}
\alias{genCords}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function that generates coordinates for a given loop starting and stopping at p1 and p2 respectfully
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
genCords(loop, p1, p2, input, vn)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{loop}{
%%     ~~Describe \code{loop} here~~
}
  \item{p1}{
%%     ~~Describe \code{p1} here~~
}
  \item{p2}{
%%     ~~Describe \code{p2} here~~
}
  \item{input}{
%%     ~~Describe \code{input} here~~
}
  \item{vn}{
%%     ~~Describe \code{vn} here~~
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
function (loop, p1, p2, input, vn) 
{
    dat <- loop[[1]]
    n = length(dat$pos)
    c <- circleCoord(n)
    pt1 <- NULL
    pt2 <- NULL
    pt1$x <- input$x[input$pos == p1]
    pt1$y <- input$y[input$pos == p1]
    pt2$x <- input$x[input$pos == p2]
    pt2$y <- input$y[input$pos == p2]
    pt2 <- translate(pt2$x, pt2$y, pt1$x, pt1$y)
    ang <- atan2(pt2$y, pt2$x)
    ang
    if (vn == 1) {
        c$y = -1 * c$y
    }
    c <- rotateV(c$x, c$y, 0, 0, ang)
    c <- translate(c$x, c$y, (-1 * pt1$x), (-1 * pt1$y))
    c
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
