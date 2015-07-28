\name{bplfile}
\alias{bplfile}
\title{
Creates a bpl file from a coordinate file 
}
\description{
A bpl file can be created from a given coordinate file for inputing into other RNA visulatization programs
}
\usage{
bplfile(dat, name)
}
\arguments{
  \item{dat}{
Coordinate file created by ct2coord or loadCoords functions 
\code{
ct=makeCt("((((...))))","AAAACCCUUUU")
### Create the coordinate file ###
dat=ct2coord(ct)
}
}
  \item{name}{
Name of the file outputed 
}
}
\value{
Creates the file with the given "name"
}
\author{
JP Bida
}
\examples{
ct=makeCt("((((...))))","AAAACCCUUUU")
### Create the coordinate file ###
dat=ct2coord(ct)

bplfile(dat,"test.bpl")
}
\keyword{ RNA }
\keyword{ bpl }% __ONLY ONE__ keyword per line
