library(dplyr)

# BBL - NOT CURRENTLY AVAILABLE -------------------------------------------

# IBP CODES WITH AOU TAX ---------------------------------------------------------------------
## Unfortunately there is currently no way to grab this file directly, so must be manually updated when necessary....
ibp <- read.csv(here::here("/data-raw/IBP-Alpha-Codes20.csv"))

ibp.munge <- ibp %>%
  mutate(
    # Rename some variables to more intuitive
    'commonname' = COMMONNAME,
    'sciname' = SCINAME,
    'alpha4' = SPEC,
    'alpha6' = SPEC6,
    source = "ibp"
  )
## NOTE: at this point i have no idea what the cols SP, CONF, or CONF6 mean -- i think some sort of exception or change indicator, maybe??
## until I can figure this out, i'll ignore.


# Combine all codes ---------------------------------------------------------
# alphacodes<- full_join(ibp.munge, )
alphacodes <- ibp.munge



# Munge all codes ---------------------------------------------------------
# ignore some of the columns--see NOTE below
alphacodes <- alphacodes %>%
  dplyr::select(commonname, sciname, alpha4, alpha6, source)



# WRITE TO PACKAGE ------------------------------------------------------------------
usethis::use_data(alphacodes, overwrite = TRUE)
