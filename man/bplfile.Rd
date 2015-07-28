\name{bplfile}
\alias{bplfile}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates a bpl file from a coordinate file 
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
bplfile(dat, name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
}
  \item{name}{
%%     ~~Describe \code{name} here~~
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
function (dat, name) 
{
    seq <- paste(dat$seq, collapse = "")
    fileo = paste(">", name, sep = "")
    fileo = paste(fileo, "\n", seq, "\n", sep = "")
    fileo = paste(fileo, "\n$ list", sep = "")
    for (i in 1:length(dat$num)) {
        if (dat$bound[i] == -1) {
        }
        else {
            fileo = paste(fileo, "\n", (dat$num[i] + 1), " ", 
                (dat$bound[i] + 1))
        }
    }
    write(fileo, file = name)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
