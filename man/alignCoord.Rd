\name{alignCoord}
\alias{alignCoord}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Alignment of secondary structure folds to 2 nucleotides. 
}
\description{
Given a coordinate file with multiple RNA secondary structures, it aligns all folds such that n1 is at position (x,y) and n2 has its y coordinate equal to y
}
\usage{
alignCoord(data, n1, n2, x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
R data frame containing the coordinates for plotting a given secondary structure 
}
  \item{n1}{
Nucleotide position that will be translated to (x,y)
}
  \item{n2}{
Nucleotide position that will have its y coordinate equal to y
}
  \item{x}{
x coordinate that n1 will be translated to 
}
  \item{y}{
y coordinate that n1 will be translated to
}
}
\value{
Returns a data frame containing fold coordinates. 
}
\author{
JP Bida
}

\seealso{
\code{\link{RNAPlot}}
}
\examples{
### Create two RNA secondary structures ####
ct1=makeCt(
           "((((...(((((((....)))))))...((((...))))...))))",
           "CCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC" 
          )
ct2=makeCt(
           "((((...(((((((....))))))).((..((...))))...))))",
           "CCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC" 
          )

### Create a coordinate file ####
dat1=ct2coord(ct1)

### Each RNA fold needs its own id ###
dat1$id=1

#### Create a coordinate file ####
dat2=ct2coord(ct2)
### Each RNA fold needs its own id ###
dat2$id=2

dat=rbind(dat1,dat2)

adat=alignCoord(dat,1,46,0,0)

### Plot the aligned RNA folds ####
RNAPlot(adat[adat$id==1,])
l=length(adat$seq[adat$id==2])
RNAPlot(adat[adat$id==2,],modspec=TRUE,modp=c(1:l),modcol=rep(4,l),mod=rep(16,l),add=TRUE)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ align }
\keyword{ rna }% __ONLY ONE__ keyword per line
