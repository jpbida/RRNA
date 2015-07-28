\name{makeCt}
\alias{makeCt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
make a CT file from a structure and sequence
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
makeCt(struct, seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{struct}{
%%     ~~Describe \code{struct} here~~
}
  \item{seq}{
%%     ~~Describe \code{seq} here~~
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
function (struct, seq) 
{
    nts <- strsplit(seq, "")
    nts <- nts[[1]]
    stc <- strsplit(struct, "")
    stc <- stc[[1]]
    out <- NULL
    for (i in 1:length(stc)) {
        out$pos[i] = i
        out$before[i] = (i - 1)
        out$after[i] = (i + 1)
        out$seq[i] = nts[i]
        out$pos2[i] = i
        if (stc[i] == ".") {
            out$bound[i] = 0
        }
        else {
            if (stc[i] == ")") {
                b <- backward(stc, i)
                out$bound[i] = b
            }
            else {
                if (stc[i] == "(") {
                  b <- forward(stc, i)
                  out$bound[i] = b
                }
            }
        }
    }
    out <- as.data.frame(out)
    out
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
