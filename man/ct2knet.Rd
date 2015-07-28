\name{ct2knet}
\alias{ct2knet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
creates a knet file from a CT file
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ct2knet(file, ind = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
%%     ~~Describe \code{file} here~~
}
  \item{ind}{
%%     ~~Describe \code{ind} here~~
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
function (file, ind = 0) 
{
    dat <- loadCt(file)
    out <- ""
    seq <- dat$seq[(ind + 1):length(dat$seq)]
    seq <- paste(seq, collapse = "")
    out = paste(">", file, "\n", sep = "")
    out = paste(out, seq, "\n\n", sep = "")
    out = paste(out, "$ list\n", sep = "")
    for (i in 1:dim(dat)[1]) {
        if (dat$bound[i] != 0) {
            out = paste(out, " ", (dat$pos[i] - ind), "   ", 
                (dat$bound[i] - ind), "\n", sep = "")
        }
    }
    out
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
