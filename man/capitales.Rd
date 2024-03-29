\name{capitales}
\alias{capitales}
\docType{data}

\title{Road Distances}

\description{
  This data set gives the road distances between 15 European capitals and their
  coordinates. 
}

\usage{data(capitales)}

\format{\code{capitales} is a list with the following components:
  \describe{
    \item{xy}{a data frame containing the coordinates of capitals}
    \item{area}{a data frame containing three variables, designed to be used 
      in area.plot function}
    \item{logo}{a list of pixmap objects, each one symbolizing a
      capital}
    \item{Spatial}{an object of the class \code{SpatialPolygons} of \code{sp},
      containing the map}
    \item{dist}{a dist object the road distances between 15 European capitals}
}}

\examples{
if (requireNamespace("ade4", quietly = TRUE) && requireNamespace("adegraphics", quietly = TRUE)) {
data(capitales)
attr(capitales$dist, "Labels")
index <- pmatch(tolower(attr(capitales$dist, "Labels")), names(capitales$logo))
w1 <- capitales$area

if(adegraphicsLoaded()) {
  if(requireNamespace("sp", quietly = TRUE)) {
    g1 <- s.label(capitales$xy, lab = rownames(capitales$xy), porigin.include = FALSE, 
      plot = FALSE)
    g2 <- s.logo(capitales$xy[sort(rownames(capitales$xy)), ], capitales$logo, 
      Sp = capitales$Spatial, pbackground.col = "lightblue", pSp.col = "white", pgrid.draw = FALSE, 
      plot = FALSE)
    g3 <- table.value(capitales$dist, ptable.margin = list(b = 5, l = 5, t = 15, r = 15), 
      ptable.x.tck = 3, ptable.y.tck = 3, plot = FALSE)
    g4 <- s.logo(pcoscaled(lingoes(capitales$dist)), capitales$logo[index], plot = FALSE) 
    
    G <- ADEgS(list(g1, g2, g3, g4), layout = c(2, 2))
  }
  
} else {
  if(requireNamespace("pixmap", quietly = TRUE)) {
    par(mfrow = c(2, 2))
    s.label(capitales$xy, lab = attr(capitales$dist, "Labels"), include.origin = FALSE)
    area.plot(w1)
  	rect(min(w1$x), min(w1$y), max(w1$x), max(w1$y), col = "lightblue")
  	invisible(lapply(split(w1, w1$id), function(x) polygon(x[, -1], col = "white")))
  	s.logo(capitales$xy, capitales$logo, klogo = index, add.plot = TRUE, 
  	 include.origin = FALSE, clogo = 0.5) # depends on pixmap
    table.dist(capitales$dist, lab = attr(capitales$dist, "Labels")) # depends on mva
    s.logo(pcoscaled(lingoes(capitales$dist)), capitales$logo, klogo = index, clogo = 0.5) 
      # depends on pixmap
    par(mfrow = c(1, 1))
  }
  }
}}

\keyword{datasets}