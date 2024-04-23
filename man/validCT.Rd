\name{validCT}
\alias{validCT}
\title{
Validate a CT File
}
\description{
Given a CT file checks for correct column names, all nucleotides have positions greater than 0, unique rows per nucleotide, multiple pairings, duplicate pairings so that the CT file can be used to generate a secondary structure using bracket notation.
}
\usage{
validCT(ct)
}
\arguments{
  \item{ct}{
Dataframe generated from loadCT
  }
}
\value{
Returns messages indicating issues with the CT file that would prevent it from generating a secondary structure in bracket notation
}
\author{
JP Bida
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ RSIM }
\keyword{ PDB }% __ONLY ONE__ keyword per line
