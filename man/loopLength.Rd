\name{loopLength}
\alias{loopLength}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function that determines the length of a loop
}
\description{
Used by RNAPlot to get the length of a loop
}
\usage{
loopLength(input, start)
}
\arguments{
  \item{input}{
CT file 
\code{makeCt("((((...))))","AAAACCCUUUU")}
}
  \item{start}{
Position of the first nucleotide in the the loop
}
}
\value{
Retuns a list contianing the output and stems
}
\author{
JP Bida
}

\examples{
ct=makeCt("((((...((((..))))..((((...)))).))))","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
out=loopLength(ct,4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ stems }% __ONLY ONE__ keyword per line
