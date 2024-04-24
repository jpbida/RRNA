\name{ct2knet}
\alias{ct2knet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
creates a knet file from a CT file
}
\description{
Knet files are used as inputs for KnetFold secondary structure prediction program
}
\usage{
ct2knet(file, ind = 0)
}
\arguments{
  \item{file}{
Name of the CT file being converted to KnetFold file
}
  \item{ind}{
Index used to relabel sequence indexes
}
}
\value{
Retuns a string containing the contains of the knet file
}
\author{
JP Bida
}
\examples{
pk=makeCt("((((...(((((((.........)))))))...((((.........))))...))))",
          "AAAAAAAACCCCCCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC"
         )
pk$bound[pk$pos==20]=42
pk$bound[pk$pos==19]=43
pk$bound[pk$pos==43]=19
pk$bound[pk$pos==42]=20

f = tempfile()
### Create a CT file for testing ###
write.table(pk[,c(1,4,2,3,6,5)],file=f,row.names=FALSE,col.names=TRUE)

### Convert CT file to Knet ###
out=ct2knet(f,0)
}
\keyword{ KnetFold }
\keyword{ RNA }% __ONLY ONE__ keyword per line
