\name{makeCt}
\alias{makeCt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
make a CT file from a structure and sequence
}
\description{
Given an RNA secondary structure in bracket notation containing no pseudoKnots this function creates an R data frame that represents the secondary structures CT file.
}
\usage{
makeCt(struct, seq)
}
\arguments{
  \item{struct}{
Bracket notation. 
\code{st="(((((....)))))..((..))"}
}
  \item{seq}{
String containing the RNA sequence
\code{seq="AUAAUUAAAAAAAACCCCCAAA"} 
}
}
\value{
Returns a data frame representing the bracket notaiton secondary structure in a CT file like format.
}
\author{
JP Bida
}

\examples{
st="(((((....)))))..((..))"
seq="AUAAUUAAAAAAAACCCCCAAA"

ct=makeCt(st,seq) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ CT }% __ONLY ONE__ keyword per line
