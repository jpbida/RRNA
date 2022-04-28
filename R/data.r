#' Hydrogen bonds in tRNA molecule extracted from PDB file  
#'
#' A dataset containing the hydrogen bonds in a trna tertiary structure
#' extracted using the RSIM pdb2fuzzy application. (see https://github.com/jpbida/RSIM)
#' The variables are as follows:
#'
#' @format A data frame with 59 rows and 7 variables:
#' \describe{
#'   \item{pdb}{name of PDB file}
#'   \item{model}{model number in the PDB file}
#'   \item{pos1}{position of first nucleotide in basepair}
#'   \item{pos2}{position of second nucleotide in basepair}
#'   \item{face1}{face on nucleotide in position one that is hydrogen bonding }
#'   \item{face2}{face on nucleotide in position two that is hydrogen bonding }
#'   \item{h-bonds}{number of hydrogen bonds. This is fractional based on distance}
#' }
"trna_basepairs"
