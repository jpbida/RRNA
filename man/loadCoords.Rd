\name{loadCoords}
\alias{loadCoords}
\title{
Loads a coordinate file into a data frame
}
\description{
Coordinate files can be created from the viennaRNA library. 
}
\usage{
loadCoords(filename)
}
\arguments{
  \item{filename}{
Name of the coordinate file being loaded
}
}
\value{
Data frame containing the coordinate file
}
\references{
The RRNAFold program generates the coordinate files used by RRNA

\url{https://github.com/jpbida/ViennaScripts}
}
\author{
JP Bida
}

\examples{
### Create a test coordinate file using ct2coord ###
ct=makeCt("((((...(((((((.........)))))))...((((.........))))...))))",
          "AAAAAAAACCCCCCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC" 
         )
coord=ct2coord(ct)
### add an id ###
coord$id=1

### write out test file ###
write.table( coord[,c('id','x','y','seq','num','bound')],
             col.names=FALSE,row.names=FALSE,sep=",",file="test.cr"
           )

### Read in the coordinate file ##
input=loadCoords("test.cr")

### Plot the file using RNAPlot ##
RNAPlot(input)
}
\keyword{ RNA }
\keyword{ coord}% __ONLY ONE__ keyword per line
