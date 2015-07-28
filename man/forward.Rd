\name{forward}
\alias{forward}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function for moving through secondary structures
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
forward(stc, i)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stc}{
%%     ~~Describe \code{stc} here~~
}
  \item{i}{
%%     ~~Describe \code{i} here~~
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
function (stc, i) 
{
    k <- 1
    go <- 1
    out <- 0
    if (stc[i] == "(") {
        i <- i + 1
        for (j in i:length(stc)) {
            if (go == 1) {
                if (stc[j] == ")") {
                  k <- k - 1
                  if (k == 0) {
                    out = j
                    go = 0
                  }
                }
                else {
                  if (stc[j] == "(") {
                    k = k + 1
                  }
                }
            }
        }
    }
    out
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
