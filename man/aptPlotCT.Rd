\name{aptPlotCT}
\alias{aptPlotCT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
same as RNAplot except takes a ct filename as input
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
aptPlotCT(file, ranges = 0, add = FALSE, hl = NULL, seqcols = NULL, seqTF = FALSE, labTF = FALSE, nt = FALSE, dp = 0.5, modspec = FALSE, modp = NULL, mod = NULL, modcol = NULL, tsize = 0.5, main = "", pseudoTF = FALSE, pseudo_nums = NULL, ticks = NULL, ticksTF = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
%%     ~~Describe \code{file} here~~
}
  \item{ranges}{
%%     ~~Describe \code{ranges} here~~
}
  \item{add}{
%%     ~~Describe \code{add} here~~
}
  \item{hl}{
%%     ~~Describe \code{hl} here~~
}
  \item{seqcols}{
%%     ~~Describe \code{seqcols} here~~
}
  \item{seqTF}{
%%     ~~Describe \code{seqTF} here~~
}
  \item{labTF}{
%%     ~~Describe \code{labTF} here~~
}
  \item{nt}{
%%     ~~Describe \code{nt} here~~
}
  \item{dp}{
%%     ~~Describe \code{dp} here~~
}
  \item{modspec}{
%%     ~~Describe \code{modspec} here~~
}
  \item{modp}{
%%     ~~Describe \code{modp} here~~
}
  \item{mod}{
%%     ~~Describe \code{mod} here~~
}
  \item{modcol}{
%%     ~~Describe \code{modcol} here~~
}
  \item{tsize}{
%%     ~~Describe \code{tsize} here~~
}
  \item{main}{
%%     ~~Describe \code{main} here~~
}
  \item{pseudoTF}{
%%     ~~Describe \code{pseudoTF} here~~
}
  \item{pseudo_nums}{
%%     ~~Describe \code{pseudo_nums} here~~
}
  \item{ticks}{
%%     ~~Describe \code{ticks} here~~
}
  \item{ticksTF}{
%%     ~~Describe \code{ticksTF} here~~
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
function (file, ranges = 0, add = FALSE, hl = NULL, seqcols = NULL, 
    seqTF = FALSE, labTF = FALSE, nt = FALSE, dp = 0.5, modspec = FALSE, 
    modp = NULL, mod = NULL, modcol = NULL, tsize = 0.5, main = "", 
    pseudoTF = FALSE, pseudo_nums = NULL, ticks = NULL, ticksTF = FALSE) 
{
    dat <- loadCt(file)
    pseudo <- pseudoKnot(dat)
    data <- ct2coord(pseudo[[2]])
    names(data)[1] = "num"
    data <- as.data.frame(data)
    l = 1
    if (seqTF) {
        s <- dat$seq
        sequence <- paste(s, collapse = "")
    }
    if (ranges == 0 & length(seqcols) < 1) {
        l = 0
    }
    if (ranges == 0) {
        ranges <- NULL
        print("default ranges used")
        ranges$min[1] <- 0
        ranges$max[1] <- dim(data)[1]
        ranges$desc[1] <- c("Aptamer")
        ranges$col[1] <- -1
        ranges <- as.data.frame(ranges)
    }
    s2 <- dim(data)[1]
    if (length(hl) < 1) {
        print("no sequences to match")
    }
    else {
        hlranges <- NULL
        for (i in 1:length(hl)) {
            t <- strsplit(hl[i], "")
            s1 <- length(t[[1]])
            groups <- NULL
            if (s2 <= s1) {
                groups[[1]] <- as.character(data$seq)
            }
            else {
                for (j in 1:(s2 - s1)) {
                  groups[[j]] <- as.character(data$seq[j:(j + 
                    (s1 - 1))])
                }
            }
            groups <- lapply(groups, paste, collapse = "")
            groups <- unlist(groups)
            ind <- c(1:length(groups))[groups == hl[i]]
            ind <- data$num[ind]
            print(ind)
            hlranges$min <- c(hlranges$min, ind)
            hlranges$max <- c(hlranges$max, (ind + (s1 - 1)))
            hlranges$desc <- c(hlranges$desc, rep(hl[i], length(ind)))
            hlranges$col = c(hlranges$col, rep(seqcols[i], length(ind)))
        }
        print(hlranges)
        hlranges <- as.data.frame(hlranges)
        ranges <- rbind(ranges, hlranges)
    }
    s1 <- max(c(data$x, data$y))
    s1x <- max(c(data$x)) + 3
    s1y <- max(c(data$y)) + 3
    s2 <- min(c(data$x, data$y))
    s2x <- min(c(data$x)) - 3
    s2y <- min(c(data$y)) - 3
    if (add == FALSE) {
        plot(data$x, data$y, type = "n", xlab = "", ylab = "", 
            axes = FALSE, xlim = c(s2x, s1x), ylim = c(s2y, s1y))
    }
    else {
        if (add == TRUE) {
            points(data$x, data$y, type = "n")
        }
    }
    x <- data$x
    y <- data$y
    if (nt) {
    }
    else {
        lines(x, y, lw = 4)
    }
    if (l == 1) {
        if (labTF) {
            legend(s2[1], s1[1], legend = ranges$desc[ranges$col != 
                0], col = abs(ranges$col[ranges$col != 0]), bty = "n", 
                lty = 1)
        }
    }
    if (nt == TRUE) {
        x1 <- data$x[1]
        x2 <- data$x[2]
        y1 <- data$y[1]
        y2 <- data$y[2]
        vx <- (x1 - x2)
        vy <- (y1 - y2)
        dist <- sqrt(vx^2 + vy^2)
        vx <- vx/dist
        vy <- vy/dist
        text((data$x[1] + (vx * dp)), (data$y[1] + (vy * dp)), 
            "5'", cex = tsize)
        x3 <- (-1 * (y1 - y2))
        y3 <- (x1 - x2)
        vx <- x3/dist
        vy <- y3/dist
        text((data$x[1] + (vx * dp)), (data$y[1] + (vy * dp)), 
            data$seq[1], cex = tsize)
        t1 <- length(data$x)
        t2 <- (length(data$x) - 1)
        x1 <- data$x[t1]
        x2 <- data$x[t2]
        y1 <- data$y[t1]
        y2 <- data$y[t2]
        vx <- (x1 - x2)
        vy <- (y1 - y2)
        dist <- sqrt(vx^2 + vy^2)
        vx <- vx/dist
        vy <- vy/dist
        text((data$x[t1] + (vx * dp)), (data$y[t1] + (vy * dp)), 
            "3'", cex = tsize)
        x3 <- (-1 * (y1 - y2))
        y3 <- (x1 - x2)
        vx <- x3/dist
        vy <- y3/dist
        text((data$x[t1] - (vx * dp)), (data$y[t1] - (vy * dp)), 
            data$seq[t1], cex = tsize)
        if (modspec == TRUE) {
            for (i in 1:length(modp)) {
                if (mod[i] == 1) {
                }
                else {
                  if (mod[i] == 2) {
                  }
                  else {
                    if (mod[i] == 3) {
                    }
                    else {
                      if (mod[i] == 4) {
                        points(data$x[modp[i]], data$y[modp[i]], 
                          pch = 1, col = modcol[i])
                      }
                    }
                  }
                }
            }
        }
        for (i in 2:(length(data$x) - 1)) {
            x1 <- data$x[(i - 1)]
            x2 <- data$x[(i + 1)]
            y1 <- data$y[(i - 1)]
            y2 <- data$y[(i + 1)]
            x3 <- (-1 * (y1 - y2))
            y3 <- (x1 - x2)
            dist <- sqrt(x3^2 + y3^2)
            x3 <- x3/dist
            y3 <- y3/dist
            text(data$x[i] + (x3 * dp), data$y[i] + (y3 * dp), 
                data$seq[i], cex = tsize)
        }
    }
    if (ticksTF) {
        for (i in 2:(length(data$x) - 1)) {
            k <- data$num[i] == ticks
            t <- table(k)
            if (length(t) > 1) {
                x1 <- data$x[(i - 1)]
                x2 <- data$x[(i + 1)]
                y1 <- data$y[(i - 1)]
                y2 <- data$y[(i + 1)]
                x3 <- (-1 * (y1 - y2))
                y3 <- (x1 - x2)
                dist <- sqrt(x3^2 + y3^2)
                x3 <- x3/dist
                y3 <- y3/dist
                points(c(data$x[i], (data$x[i] + x3 * dp)), c(data$y[i], 
                  (data$y[i] + y3 * dp)), type = "l")
                dp2 <- dp * 1.8
                text(data$x[i] + (x3 * dp2), data$y[i] + (y3 * 
                  dp2), data$pos[i], cex = tsize)
            }
        }
    }
    if (pseudoTF) {
        for (i in 2:(length(data$x) - 1)) {
            k <- data$num[i] == pseudo_nums
            t <- table(k)
            if (length(t) > 1) {
                x1 <- data$x[(i - 1)]
                x2 <- data$x[(i + 1)]
                y1 <- data$y[(i - 1)]
                y2 <- data$y[(i + 1)]
                x3 <- (-1 * (y1 - y2))
                y3 <- (x1 - x2)
                dist <- sqrt(x3^2 + y3^2)
                x3 <- x3/dist
                y3 <- y3/dist
                text(data$x[i] + (x3 * dp), data$y[i] + (y3 * 
                  dp), data$seq[i], cex = tsize)
                print(c(data$x[i] + (x3 * dp), data$y[i] + (y3 * 
                  dp)))
            }
        }
    }
    for (i in 1:dim(ranges)[1]) {
        keep <- data$num >= ranges$min[i] & data$num <= ranges$max[i]
        if (ranges$col[i] != 0) {
            if (ranges$col[i] == -1) {
            }
            else {
                if (ranges$col[i] == 3) {
                  points(data$x[keep], data$y[keep], col = ranges$col[i], 
                    pch = "x")
                }
                else {
                  points(data$x[keep], data$y[keep], col = ranges$col[i], 
                    pch = 19)
                }
            }
        }
        for (i in data$num) {
            if (data$bound[data$num == i] != -1) {
                lines(c(data$x[data$num == i], data$x[data$num == 
                  data$bound[data$num == i]]), c(data$y[data$num == 
                  i], data$y[data$num == (data$bound[data$num == 
                  i])]))
            }
        }
    }
    title(main)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
