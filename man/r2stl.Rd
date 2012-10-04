\name{r2stl}
\alias{r2stl}
\title{Save R data to an STL file}
\description{\code{r2stl} takes numeric input exactly as with R's normal \code{persp()} function. The output is a STL (stereolithography) file.}
\usage{
r2stl(x, y, z, filename = "3d-R-object.stl", object.name = "r2stl-object", z.expand = FALSE, min.height = 0.008, show.persp = FALSE, strict.stl = FALSE)
}
\arguments{
  \item{x}{\code{x} is a numeric vector with the x-coordinates to plot}
  \item{y}{\code{y} is a numeric vector with the y-coordinates to plot}
  \item{z}{\code{z} is a numeric vector with the z-coordinates to plot}
  \item{filename}{\code{x} is the STL filename}
  \item{object.name}{\code{object.name} - the object that is being described must have a name specified inside the file. There's probably no point changing it from the default}
  \item{z.expand}{\code{z.expand} - to force the 3D plot to touch all six faces of the imaginary cube that surrounds it, set this parameter to TRUE}
  \item{min.height}{\code{min.height} is the minimum height for the printed material.}
  \item{show.persp}{\code{show.persp} if set to TRUE then a persp() plot of this object is shown on the screen}
  \item{strict.stl}{\code{strict.stl} is set to TRUE it makes files smaller but isn't strictly proper STL format. }
}
\details{
To view and test the STL files before printing them can be done with many programs, for example an open-source option is Meshlab \url{http://meshlab.sourceforge.net/}.
}
\value{none}
\author{Ian Walker}
\examples{
# Let's do the classic persp() demo plot
x <- seq(-10, 10, length= 100)
y <- x
f <- function(x,y) { r <- sqrt(x^2+y^2); 10 * sin(r)/r }
z <- outer(x, y, f)
z[is.na(z)] <- 1
r2stl(x, y, z, filename="lovelyfunction.stl", show.persp=TRUE)

# Now let's look at R's Volcano data
z <- volcano
x <- 1:dim(volcano)[1]
y <- 1:dim(volcano)[2]
r2stl(x, y, z, filename="volcano.stl", show.persp=TRUE)
}
\keyword{programming}
