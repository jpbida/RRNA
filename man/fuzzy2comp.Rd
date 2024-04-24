\name{fuzzy2comp}
\alias{fuzzy2comp}
\title{
Generate components from hydrogen bond data extracted from a PDB file using RSIM. 
}
\description{
Given hydrogen bond data from a PDB file generate closed structures that can be used to assemble larger 3D structures
}
\usage{
fuzzy2comp(dat)
}
\arguments{
  \item{dat}{
Dataframe containing hydrogen bond data generated from the RSIM tertiary structure program  
}
}
\value{
RNA secondary structure components
}
\author{
JP Bida
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ RSIM }
\keyword{ PDB }% __ONLY ONE__ keyword per line
