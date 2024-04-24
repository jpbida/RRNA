\name{loadCt}
\alias{loadCt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Loads a CT file into an R data frame
}
\description{
A variety of RNA secondary structure prediction programs produce CT files. You can load these CT files into 
R using the loadCT function.
}
\usage{
loadCt(file)
}
\arguments{
  \item{file}{
The name of the CT file being loaded
}
}
\value{
Returns at data frame containing the CT file data 
}
\author{
JP Bida
}


\seealso{
\code{\link{RNAPlot}}
\code{\link{aptPlotCT}}
}
\examples{
### Create a CT file with PseudoKnots ###
pk=makeCt("((((...(((((((.........)))))))...((((.........))))...))))",
          "AAAAAAAACCCCCCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC"
         )
pk$bound[pk$pos==20]=42
pk$bound[pk$pos==19]=43
pk$bound[pk$pos==43]=19
pk$bound[pk$pos==42]=20

### Create a CT file for testing ###

f = tempfile()
write.table(pk[,c(1,4,2,3,6,5)],file=f,
            row.names=FALSE,col.names=TRUE)

ctfile=loadCt(f)

### Before using ct2coord you need to remove the pseudo knots ###

l=pseudoKnot(ctfile)
dat=l[[2]]
cd=ct2coord(dat)
RNAPlot(cd)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ CT }% __ONLY ONE__ keyword per line
