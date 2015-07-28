\name{ct2coord}
\alias{ct2coord}
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
\author{
JP Bida
}
\note{
Pseudoknots sometimes cause trouble
}

\seealso{
\code{\link{RNAPlot}}
}
\examples{
ct=makeCt("((((...(((((((....)))))))...((((...))))...))))",
          "CCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC"
         )
coord=ct2coord(ct)
RNAPlot(coord)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ coordinate }
\keyword{ rna }% __ONLY ONE__ keyword per line
