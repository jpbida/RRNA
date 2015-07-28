\name{loadCoords}
\alias{loadCoords}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
loads a coordinate file into a data frame
}
\description{
Coordinate files can be created from the viennaRNA library. See example C programs at 

}
\usage{
loadCoords(filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
%%     ~~Describe \code{filename} here~~
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
function (filename) 
{
    data <- read.table(file = filename, sep = ",", header = FALSE)
    if (dim(data)[2] == 6) {
        names(data) <- c("id", "x", "y", "seq", "num", "bound")
    }
    else {
        if (dim(data)[2] == 7) {
            names(data) <- c("id", "x", "y", "seq", "num", "bound", 
                "energy")
        }
        else {
            data = NULL
            print(paste("The file ", filename, " does not have the correct number of columns", 
                sep = ""))
            print(paste("Expected 6 or 7, found ", dim(data)[2], 
                sep = ""))
        }
    }
    data
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
