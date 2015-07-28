\name{backward}
\alias{backward}
\title{
Internal function for moving through secondary structures
}
\description{
Given a bracket notation for RNA secondary structure and an index of a ")" bracket type the backward function will find the "(" bracket that closes the ")" at the given index.
}
\usage{
backward(stc, i)
}
\arguments{
  \item{stc}{
Array of brackets and dots.
\code{
a=unlist(strsplit("(((...)))...((..))",""))
}
}
  \item{i}{
index giving the position of a bracket
}
}
\value{
returns the index of the bracket that closes the bracket at the given index
}
\author{
JP Bida
}

\examples{
a=unlist(strsplit("(((...)))...((..))",""))
ind=backward(a,7)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ bracket }% __ONLY ONE__ keyword per line
