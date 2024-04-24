\name{fuzzy2ct}
\alias{fuzzy2ct}
\title{
Convert hydrogen bond data from RSIM 3D RNA structure into 2D secondary structures 
}
\description{
Given hydrogen bond data generated from a pdb file using the RSIM 3D structure prediction program, generate a bracket notation that does not contain pseudoknots that can be used as input for the RNAPlot function.
}
\usage{
fuzzy2ct(dat)
}
\arguments{
  \item{dat}{
Dataframe with columns containing the data
pdb   - name of pdb file
model - model number in the file
pos1  - nucleotide 1 position in hydrogen bonded pair
pos2  - nucleotide 2 position in hydrogen bonded pair
face1 - face of NT 1 participating in the bond
face2 - face of NT 2 participating in the bond
h-bonds - probility assigned to number of hydrogen bonds 
}
}
\value{
returns secondary structure in bracket notation for the 3D structure 
}
\author{
JP Bida
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ PDB }% __ONLY ONE__ keyword per line
