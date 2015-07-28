\name{ct2coord}
\alias{ct2coord}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate coordinate file 
}
\description{
Creates a coordinate file from a CT file that has been loaded into a data frame
}
\usage{
ct2coord(input)
}
\arguments{
  \item{input}{
Data frame representing a ct file. Created from makeCt or loadCt
}
}
\value{
Returns a coordinate file for the secondary structure represented in the CT file
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
JP Bida
}
\note{
Pseudoknots sometimes cause trouble
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{RNAPlot}}
}
\examples{
ct=makeCt("((((...(((((((....)))))))...((((...))))...))))","CCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC")
coord=ct2coord(ct)
RNAPlot(coord)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ coordinate }
\keyword{ rna }% __ONLY ONE__ keyword per line
