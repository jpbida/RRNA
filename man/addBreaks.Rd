\name{addBreaks}
\alias{addBreaks}
\title{
Internal Function - labels RNA structures taken from PDB with gaps in nucleotide sequences
}
\description{
Internal Function used in coord2comp to generate components from secondary structures
}
\usage{
addBreaks(d,structure)
}
\arguments{
  \item{d}{
coordinates generated from ct2coord 
}
  \item{structure}{
Any character sequence
}
}
\value{
Returns the character sequence provided with breaks indicated by "-"
}
\author{
JP Bida
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RSIM }
\keyword{ PDB }% __ONLY ONE__ keyword per line
