\name{doubsjt}
\alias{doubsjt}
\docType{data}
\title{Pair of Ecological Tables}
\description{
This data set gives environmental variables, fish species and spatial coordinates for 30 sites. 
}
\usage{data(doubsjt)}
\format{
    \code{doubsjt} is a list with 4 components.
    \describe{
        \item{env}{is a data frame with 30 rows (sites) and 11 environmental variables.}
        \item{fish}{is a data frame with 30 rows (sites) and 27 fish species.}
        \item{xy}{is a data frame with 30 rows (sites)  and 2 spatial coordinates.}
        \item{species}{is a data frame with 27 rows (species)  and 4 columns (names).}
    }
}
\details{
The rows of \code{doubsjt$env}, \code{doubsjt$fish} and \code{doubsjt$xy} are 30 sites along the doubsjt, a French and Switzerland river.

\code{doubsjt$env} contains the following variables:
dfs - distance from the source (km * 10), 
alt - altitude (m), 
slo (\eqn{\ln(x + 1)}{log(x + 1)} where \emph{x} is the slope (per mil * 100), 
flo - minimum average stream flow (m3/s * 100), 
pH (* 10), 
har - total hardness of water (mg/l of Calcium), 
pho - phosphates (mg/l * 100), 
nit - nitrates (mg/l * 100), 
amm - ammonia nitrogen (mg/l * 100), 
oxy - dissolved oxygen (mg/l * 10), 
bdo - biological demand for oxygen (mg/l * 10).

\code{doubsjt$fish} contains the abundance of the following fish species: \emph{Cottus gobio} (Cogo), \emph{Salmo trutta fario} (Satr), 
\emph{Phoxinus phoxinus} (Phph), \emph{Nemacheilus barbatulus} (Neba), \emph{Thymallus thymallus} (Thth), \emph{Telestes soufia agassizi} (Teso), 
\emph{Chondrostoma nasus} (Chna), \emph{Chondostroma toxostoma} (Chto), \emph{Leuciscus leuciscus} (Lele), \emph{Leuciscus cephalus cephalus} (Lece), 
\emph{Barbus barbus} (Baba), \emph{Spirlinus bipunctatus} (Spbi), \emph{Gobio gobio} (Gogo), \emph{Esox lucius} (Eslu), 
\emph{Perca fluviatilis} (Pefl), \emph{Rhodeus amarus} (Rham), \emph{Lepomis gibbosus} (Legi), \emph{Scardinius erythrophtalmus} (Scer), 
\emph{Cyprinus carpio} (Cyca), \emph{Tinca tinca} (Titi), \emph{Abramis brama} (Abbr), \emph{Ictalurus melas} (Icme), 
\emph{Acerina cernua} (Acce), \emph{Rutilus rutilus} (Ruru), \emph{Blicca bjoerkna} (Blbj), \emph{Alburnus alburnus} (Alal), 
\emph{Anguilla anguilla} (Anan).

\code{doubsjt$species} contains the names of the 27 fish species. The four columns correspond to: 1 = scientific name (Genus species), 2 = French common name, 3 = English common name, 4 = Four character code.

}
\source{
 Verneaux, J. (1973) 
 \emph{Cours d'eau de Franche-Comté (Massif du Jura). 
 Recherches écologiques sur le réseau hydrographique du Doubs. Essai de biotypologie}. 
 Thèse d'état, Besançon. 1--257.
}
\references{
See a French description of fish species at \url{http://pbil.univ-lyon1.fr/R/pdf/pps047.pdf}.\cr
Chessel, D., Lebreton, J.D. and Yoccoz, N.G. (1987) Propriétés de l'analyse canonique des correspondances. Une illustration
en hydrobiologie. \emph{Revue de Statistique Appliquée}, \bold{35}, 4, 55--72.
}
\examples{
}
\keyword{datasets}
