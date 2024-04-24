\name{aptPlotCT}
\alias{aptPlotCT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
RNA secondary structure plotting from CT files
}
\description{
Generates and RNA secondary structure plot from a CT file. Removes pseudoKnots automatically and allows them to be drawn back in with pseudoTF=TRUE.
}
\usage{
aptPlotCT(file, ranges = 0, add = FALSE, hl = NULL, seqcols = NULL,
          seqTF = FALSE, labTF = FALSE, nt = FALSE, dp = 0.5, 
          modspec = FALSE, modp = NULL, mod = NULL, modcol = NULL, 
          tsize = 0.5, main = "", pseudoTF = FALSE, pseudo_nums = NULL, 
          ticks = NULL, ticksTF = FALSE
         )
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
CT file name
}
  \item{ranges}{
A data frame containing the ranges of sequence positions that should be highlighted with given colors.
\code{
ranges=data.frame(min=c(69,1,7),max=c(74,5,17),col=c(2,3,4),desc=c("Region 1","Region 2","Region 3"))
}
The above will highlight the nucleotides at positions 69-74, 1-5, and 7-17 respectively 
}
  \item{add}{
Should the new plot be added to an existing plot TRUE/FALSE
}
  \item{hl}{
Takes an array of sequences and highlights them with seqcol
\code{hl=c("GGGAAAA","GGGCCCC")}
The above hl will highlight the nucleotides in the secondary structure that have the given sequences with the colors provided in the seqcols option.  
}
  \item{seqcols}{
Colors that should be used to highlight the sequences given in hl
}
  \item{seqTF}{
If sequence is a vector set as TRUE
}
  \item{labTF}{
TRUE/FALSE plot the legend
}
  \item{nt}{
TRUE/FALSE plot the nucleotide sequence on the secondary structure
}
  \item{dp}{
Floating point value to determine how far from the coordinates the nucleotide sequence should be plotted. Values between 0 and 5 usually work best. 
}
  \item{modspec}{
TRUE/FALSE modify specific positions in the secondary structure. Used in combination with modp,mod,and modcol. This allows you to change the shape and color of nucleotide in the secondary structure. 
}
  \item{modp}{
Array defining the specific positions to be modified in the plot
\code{
modp=c(1:10)
}
}
  \item{mod}{
Array defining the pch values to be plotted at the positions given by modp. 
\code{
mod=c(rep(15,5),rep(16,5))
}
}
  \item{modcol}{
Array of color values to be used for plotting at the positions defined by modp in the secondary structure. 
\code{
modcol=rep(4,10)
}
}
  \item{tsize}{
Text size used for plotting the nucleotide sequence in the secondary structure. Only applicable when nt=TRUE. Values between 0.1 and 4 work well. 
}
  \item{main}{
Title used for the plot when labTF is set to TRUE.
}
  \item{pseudoTF}{
Plot pseudo knot sequences
}
  \item{pseudo_nums}{
indices of the nucleotides included in pseudoknots
}
  \item{ticksTF}{
TRUE/FALSE include ticks 
}
  \item{ticks}{
Positions where the ticks should be drawn. These are sequence positions in the RNA molecule
}
}
\value{
Returns and R plot object
}
\author{
JP Bida
}

\seealso{
\code{\link{RNAPlot}}
}
\examples{
### PseudoKnots ###
pk= makeCt("((((...(((((((.........)))))))...((((.........))))...))))",
          "AAAAAAAACCCCCCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC"
         )
pk$bound[pk$pos==20]=42
pk$bound[pk$pos==19]=43
pk$bound[pk$pos==43]=19
pk$bound[pk$pos==42]=20
f = tempfile()
### Create a CT file for testing ###
write.table(pk[,c(1,4,2,3,6,5)],file=f,row.names=FALSE,col.names=TRUE)

aptPlotCT(f,ticksTF=TRUE,ticks=seq(1,60,by=5),pseudoTF=TRUE,pseudo_nums=c(19,20,43,42))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ RNA }
\keyword{ CT }% __ONLY ONE__ keyword per line
