\name{forward}
\alias{forward}
\title{
Internal function for moving through secondary structures
}
\description{
Given a bracket notation for RNA secondary structure and an index of a "(" bracket type the forward function will find the ")" bracket that closes the "(" at the given index.
}
\usage{
forward(stc, i)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stc}{
a=unlist(strsplit("(((...)))...((..))",""))
}
  \item{i}{
Interger index 
}
}
\value{
Integer index
}
\author{
JP Bida
}
\seealso{
\code{\link{backward}}
}
\examples{
a=unlist(strsplit("(((...)))...((..))",""))
ind=forward(a,1)
}
\keyword{ bracket }
\keyword{ RNA }% __ONLY ONE__ keyword per line
