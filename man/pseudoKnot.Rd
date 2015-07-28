\name{pseudoKnot}
\alias{pseudoKnot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
removes pseudoknots from a ct file 
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pseudoKnot(ctDat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ctDat}{
%%     ~~Describe \code{ctDat} here~~
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
function (ctDat) 
{
    input = ctDat
    pseudo <- NULL
    pk <- 1
    for (i in ctDat$pos) {
        bound = ctDat$bound[ctDat$pos == i]
        if (bound != 0 & i < bound) {
            for (j in i:bound) {
                nbound = ctDat$bound[ctDat$pos == j]
                if (nbound != 0) {
                  if (nbound > bound | nbound < i) {
                    input$bound[input$pos == j] = 0
                    input$bound[input$pos == nbound] = 0
                    pseudo$pos[pk] = j
                    pseudo$bound[pk] = nbound
                    pk <- pk + 1
                  }
                }
            }
        }
    }
    out <- NULL
    pseudo <- as.data.frame(pseudo)
    psk <- unique(pseudo$pos)
    outpk <- NULL
    sk <- 1
    for (pk in psk) {
        outpk$pos[sk] = pk
        bound <- pseudo$bound[pseudo$pos == pk]
        bound <- bound[1]
        outpk$bound[sk] = bound
        sk <- sk + 1
    }
    if (length(psk) > 0) {
        stems <- NULL
        d1 <- diff(outpk$bound)
        d2 <- diff(outpk$pos)
        ind <- 1:length(d1)
        r1 <- ind[d1 != -1]
        r2 <- ind[d2 != 1]
        r <- c(r1, r2)
        r <- unique(r)
        r <- sort(r)
        s <- 1
        for (i in 1:length(r)) {
            tmp <- NULL
            if (i == 1) {
                tmp$pos <- outpk$pos[1:r[1]]
                tmp$bound <- outpk$bound[1:r[1]]
            }
            else {
                tmp$pos <- outpk$pos[(r[(i - 1)] + 1):r[i]]
                tmp$bound <- outpk$bound[(r[(i - 1)] + 1):r[i]]
            }
            stems[[s]] <- tmp
            s <- s + 1
        }
        l <- length(r)
        lp <- length(outpk$pos)
        tmp$pos <- outpk$pos[(r[l] + 1):lp]
        tmp$bound <- outpk$bound[(r[l] + 1):lp]
        stems[[s]] <- tmp
        compm <- NULL
        m1t = 1
        for (i in 1:s) {
            for (j in 1:s) {
                comp <- 0
                st1 <- stems[[i]]
                st2 <- stems[[j]]
                mb1 <- min(c(st1$bound))
                mp1 <- min(c(st1$pos))
                mb2 <- min(c(st2$bound))
                mp2 <- min(c(st2$pos))
                mm2 <- min(c(mp2, mb2))
                mx2 <- max(c(mp2, mb2))
                print(paste(mb1, mp1, mm2, mx2))
                if (mp1 < mx2 & mp1 > mm2 & mb1 < mm2) {
                  comp <- 1
                }
                else {
                  if (mp1 < mx2 & mp1 > mm2 & mb1 > mx2) {
                    comp <- 1
                  }
                  else {
                    if (mb1 < mx2 & mb1 > mm2 & mp1 > mx2) {
                      comp <- 1
                    }
                    else {
                      if (mb1 < mx2 & mb1 > mm2 & mp1 < mm2) {
                        comp <- 1
                      }
                      else {
                      }
                    }
                  }
                }
                compm$i[m1t] = i
                compm$j[m1t] = j
                compm$c[m1t] = comp
                m1t <- m1t + 1
            }
        }
        comp <- as.data.frame(compm)
        mySets <- NULL
        l <- c(1:length(stems))
        mys <- 1
        while (length(l) > 0) {
            s1 <- l[1]
            s <- comp[comp$c == 0 & comp$i == s1, ]
            print(l)
            v <- s$j[1]
            for (j in s$j) {
                v <- c(v, j)
                l <- l[l != j]
            }
            mySets[[mys]] = v
            mys <- mys + 1
        }
        lst <- NULL
        for (i in 1:length(stems)) {
            tmp <- stems[[i]]
            tmp <- tmp$pos
            lst[i] <- length(tmp)
        }
        lst2 <- NULL
        for (i in 1:length(mySets)) {
            tmp <- mySets[[i]]
            tmp <- tmp[2:length(tmp)]
            lst2[i] <- sum(lst[tmp])
        }
        print(lst2)
        largest <- c(1:length(lst2))[lst2 == max(lst2)]
        largest <- mySets[[largest]]
        largest <- largest[2:length(largest)]
        print(largest)
        addBack <- NULL
        tmp <- stems[[largest[1]]]
        addBack$pos <- tmp$pos
        addBack$bound <- tmp$bound
        if (length(largest) > 1) {
            for (i in largest[2:length(largest)]) {
                tmp <- stems[[i]]
                addBack$pos <- c(addBack$pos, tmp$pos)
                addBack$bound <- c(addBack$bound, tmp$bound)
            }
        }
        for (pos in addBack$pos) {
            bnd <- addBack$bound[addBack$pos == pos]
            input$bound[input$pos == pos] = bnd
            input$bound[input$pos == bnd] = pos
        }
        addBack <- as.data.frame(addBack)
        outpk <- as.data.frame(outpk)
        for (pos in addBack$pos) {
            outpk <- outpk[outpk$pos != pos, ]
        }
    }
    else {
        outpk = NULL
    }
    out[[1]] <- outpk
    out[[2]] <- input
    out
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
