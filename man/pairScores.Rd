\name{pairScores}
\alias{pairScores}
\title{
Identifies base-pairs from hydrogen bonding data
}
\description{
Given all hydrogen binding data from a PDB file identify the secondary structure that maximizes pairings using a greedy approach. 
}
\usage{
pairScores(PairDF)
}
\arguments{
  \item{PairDF}{
Dataframe generated from PDB file using RSIM.
  }
}
\value{
Returns PairDF file with pairings removed that do not contribute to the bracket notation.
}
\author{
JP Bida
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ RSIM }
\keyword{ PDB }% __ONLY ONE__ keyword per line
