\name{stemCords}
\alias{stemCords}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
internal function that generates coordinates for a stem
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
stemCords(input, p1, p2, x1, y1, x2, y2, x3, y3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{input}{
%%     ~~Describe \code{input} here~~
}
  \item{p1}{
%%     ~~Describe \code{p1} here~~
}
  \item{p2}{
%%     ~~Describe \code{p2} here~~
}
  \item{x1}{
%%     ~~Describe \code{x1} here~~
}
  \item{y1}{
%%     ~~Describe \code{y1} here~~
}
  \item{x2}{
%%     ~~Describe \code{x2} here~~
}
  \item{y2}{
%%     ~~Describe \code{y2} here~~
}
  \item{x3}{
%%     ~~Describe \code{x3} here~~
}
  \item{y3}{
%%     ~~Describe \code{y3} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (input, p1, p2, x1, y1, x2, y2, x3, y3) 
{
    output <- NULL
    output$pos[1] = p1
    output$x[1] = x1
    output$y[1] = y1
    output$pos[2] = p2
    output$x[2] = x2
    output$y[2] = y2
    ends <- -1
    vperp <- NULL
    vperp$x = x3 - x1
    vperp$y = y3 - y1
    print(vperp)
    v <- rotateS((x2 - x1), (y2 - y1), 0, 0, (pi/2))
    m <- sqrt(v[1]^2 + v[2]^2) + sqrt(vperp$x^2 + vperp$y^2)
    ang <- acos((v[1] * vperp$x + v[2] * vperp$y)/m)
    print(ang)
    if (ang < pi/2) {
        v <- rotateS((x2 - x1), (y2 - y1), 0, 0, (-1 * pi/2))
    }
    vect <- NULL
    vect$x = v[1]
    vect$y = v[2]
    nv <- sqrt((vect$x)^2 + (vect$y)^2)
    vect$x <- vect$x/nv
    vect$y <- vect$y/nv
    prev1 = p1
    j <- 3
    mf <- length(input$pos) + 5
    mp <- max(input$pos)
    while (j < mf) {
        npos = input$after[input$pos == prev1]
        if (npos < (mp + 1)) {
            nextNT = input[input$pos == npos, ]
            if (dim(nextNT)[1] < 1) {
                j = mf + 5
            }
            else {
                if (nextNT$bound == 0) {
                  bound <- input$bound[input$pos == prev1]
                  ends <- c(prev1, bound)
                  j = mf + 5
                }
                else {
                  pbpos = input$bound[input$pos == prev1]
                  pbafter = input$before[input$pos == pbpos]
                  bpos = input$bound[input$pos == npos]
                  print(paste(bpos, pbpos, pbafter))
                  if (pbafter == bpos) {
                    output$pos[j] = npos
                    output$x[j] = output$x[output$pos == prev1] + 
                      vect$x[1]
                    output$y[j] = output$y[output$pos == prev1] + 
                      vect$y[1]
                    j <- j + 1
                    if (j > 3) {
                      pbpos = input$bound[input$pos == prev1]
                      bpos = input$bound[input$pos == npos]
                      output$pos[j] = bpos
                      output$x[j] = output$x[output$pos == pbpos] + 
                        vect$x[1]
                      output$y[j] = output$y[output$pos == pbpos] + 
                        vect$y[1]
                      j <- j + 1
                    }
                  }
                  else {
                    ends <- c(prev1, pbpos)
                    j = mf + 5
                  }
                  prev1 = npos
                }
            }
        }
        else {
            j = mf + 5
        }
    }
    l <- NULL
    l[[1]] <- output
    l[[2]] <- ends
    l
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
