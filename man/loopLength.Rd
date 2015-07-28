\name{loopLength}
\alias{loopLength}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function that determines the length of a loop
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
loopLength(input, start)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{input}{
%%     ~~Describe \code{input} here~~
}
  \item{start}{
%%     ~~Describe \code{start} here~~
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
function (input, start) 
{
    stems <- NULL
    s <- 1
    first <- input[input$pos == start, ]
    mf <- length(input$pos)
    mp <- max(input$pos)
    j <- 0
    ntot = 1
    output <- NULL
    output$pos[1] = first$pos
    i <- 2
    nextNT <- NULL
    nextNT = input[input$pos == first$pos, ]
    bound = 1
    while (j < mf) {
        if (nextNT$bound != 0 & bound == 0) {
            npos = nextNT$bound
            bound = 1
            stems[[s]] = c(nextNT$pos, npos)
            s <- s + 1
        }
        else {
            bound = 0
            npos = input$after[input$pos == nextNT$pos]
        }
        nextNT = input[input$pos == npos, ]
        if (nextNT$pos == first$bound) {
            j = mf
            output$pos[i] = nextNT$pos
        }
        else {
            if (nextNT$pos == mp) {
                ntot = ntot + 1
                j = mf
                output$pos[i] = nextNT$pos
            }
            else {
                ntot = ntot + 1
                output$pos[i] = nextNT$pos
                j <- j + 1
                i <- i + 1
            }
        }
    }
    out <- NULL
    out[[1]] <- output
    out[[2]] <- stems
    out
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
