\name{pseudoKnot}
\alias{pseudoKnot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
removes pseudoknots from a ct file 
}
\description{
internal function used to remove pseudoKnots before calling ct2coord 
}
\usage{
pseudoKnot(ctDat)
}
\arguments{
  \item{ctDat}{
R data frame representing a CT file for RNA secondary structure
}
}
\value{
Returns a list with the first item being a list of pseudoKnots and the second item being a CT file data frame with all pseudoKnots removed from the structure
}
\author{
JP Bida
}


\seealso{
\code{\link{RNAPlot}},
\code{\link{aptPlotCT}},
\code{\link{ct2coord}},
}
\examples{
pk=makeCt("((((...(((((((.........)))))))...((((.........))))...))))",
          "AAAAAAAACCCCCCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC")
pk$bound[pk$pos==20]=42
pk$bound[pk$pos==19]=43
pk$bound[pk$pos==43]=19
pk$bound[pk$pos==42]=20

l=pseudoKnot(pk)

## Positions of removed pseudo knots ##
removed=l[[1]]

### clean ct file that can be used by ct2coord ###
ct=l[[2]]


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ pseudoknot }
\keyword{ RNA }% __ONLY ONE__ keyword per line
