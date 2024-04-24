\name{RNAPlot}
\alias{RNAPlot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generic RNA Secondary Structure Plotting Function
}
\description{
Given fold data from loadFolds or ct2coords RNAPlot plots the secondary structure
}
\usage{
RNAPlot(data, ranges = 0, add = FALSE, hl = NULL, seqcols = NULL,
        seqTF = FALSE, labTF = FALSE, nt = FALSE, dp = 0.5,
        modspec = FALSE, modp = NULL, mod = NULL, modcol = NULL,
        tsize = 0.5, main = "", pointSize = 2, lineWd = 2)
}
\arguments{
  \item{data}{
R data frame containing the coordinates for plotting a given secondary structure 
\code{
###  Example input file format: 
###  
###  0,158.534088,199.550888,G,0,-1
###  0,152.741776,194.100571,A,1,-1
###  0,149.307266,186.849899,A,2,-1
###  0,148.749847,178.776566,G,3,-1
###  0,151.196960,170.989944,C,4,59
###  0,141.412643,159.620361,U,5,58
###  0,131.628342,148.250793,U,6,57
###  0,121.844025,136.881210,A,7,56
###  0,112.059715,125.511642,C,8,55
###  0,102.275398,114.142059,A,9,54
###  0,89.142853,109.343330,A,10,-1
###  ....
###  
###  There is no header on the input file. The columns are 
###  ID,X,Y,SEQ,POS,BOUND
###  
###  ID - A unique ID for a given fold in the file 
###  X - X position of the NT in the secondary structure plot
###  Y - Y position of the NT in the secondary structure plot
###  SEQ - The nucleotide (A,G,U,C) 
###  POS - The position of the NT in the sequence
###  BOUND - The position of the NT that the NT at POS is bound to
}
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
  \item{pointSize}{
The size of points plotted in the secondary structure. Values betwen 0.1-5 work well.  
}
  \item{lineWd}{
Line width for base pairings and backbone of secondary structures. 
}
}
\value{
Returns a generic R plot that can be used with the jpeg, postscript, etc. functions. 
}
\author{
JP Bida
}

\seealso{
\code{\link{makeCt}},\code{\link{loadCoords}},\code{\link{ct2coord}}
}
\examples{

## Create a CT file from bracket notation and sequence ###
ct=makeCt( "((((...(((((((....)))))))...((((...))))...))))",
          "CCCCAAAGGGGGGGAUUACCCCUCCUUUAAAAGGGUUUUCCCCCCC"
)

## Create a coordinate file based on the CT file ###
dat=ct2coord(ct)

### Create a plot of the secondary structure ###
RNAPlot(dat)

### Plot positions 1:4 as green and 43:46 circles ## 
### and show the legend
ranges=data.frame(min=c(1,43),max=c(4,46),col=c(2,3),
                  desc=c("Region 1","Region 2")
                 )
RNAPlot(dat,ranges,labTF=TRUE)

### Highlight the sequences CUCCU and CCCCAAA ###

RNAPlot(dat,hl=c("CUCCU","CCCCAAA"),seqcol=c(2,4),labTF=TRUE,main="RNA Molecule")

### Modify specific positions ####

RNAPlot( dat, modspec=TRUE, modp=c(1:4,43:46),mod=c(17,17,15,15,16,16,16,16),
         modcol=c(rep(2,2),rep(3,2),rep(4,4))
       )

### RNA Plot with nucleotides ###
RNAPlot(dat,nt=TRUE)

### RNA plot with nucleotides
RNAPlot( dat,nt=TRUE,modspec=TRUE,modp=c(1:4,43:46),
         mod=c(17,17,15,15,16,16,16,16),
         modcol=c(rep(2,2),rep(3,2),rep(4,4))
       )

### RNA Plot wiht nucleotides and dots ###

RNAPlot(dat)
RNAPlot(dat,nt=TRUE,add=TRUE,dp=0.75)
}
\keyword{ rna }
\keyword{ rnaplot }% __ONLY ONE__ keyword per line
