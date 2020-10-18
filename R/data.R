## Documentation for data sources in /data-raw/


# alphacodes--------------------------------
#' Alpha codes (4-letter and 6-letter) for North American bird species.
#'
#' A dataset containing alpha codes from (currently only) the IBP. (Future addition BBL)
#'
#' @format A data frame with 2266 rows and 5 variables:
#' \describe{
#'   \item{source}{Name of the source of the alpha codes. Institute for Bird Populations (IBP). Bird Banding Lab (BBL)}
#'   \item{alpha4}{4-letter alpha code associated with the `source`}
#'   \item{alpha6}{6-letter alpha code associated with the `source`}
#'   \item{commonname}{English common name provided by the `source`}
#'   \item{sciname}{Latin scientific name provided by the `source`}
#' }
#' @source IBP codes must currently be manually downloaded from\url{https://www.birdpop.org/pages/birdSpeciesCodes.php}
#' @source BBL codes are not currently published, but will be included in the same data object as the IBP (here)
"alphacodes"
