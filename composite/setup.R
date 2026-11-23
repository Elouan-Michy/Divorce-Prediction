# ============================================================
# PACKAGES
# ============================================================

packages <- c(
  "tidyverse",
  "survival",
  "survminer",
  "knitr",
  "kableExtra",
  "gridExtra",
  "MASS",
  "muhaz",
  "broom",
  "flexsurv",
  "ggfortify",
  "plotly",
  "RColorBrewer",
  "htmltools",
  "fitdistrplus"
)

options(repos = c(CRAN = "https://cloud.r-project.org"))

packages_missing <- packages[
  !packages %in% rownames(installed.packages())
]

if (length(packages_missing) > 0) {
  install.packages(packages_missing, dependencies = TRUE)
}

invisible(
  lapply(packages, library, character.only = TRUE)
)

options(
  digits = 4,
  scipen = 999,
  width = 120
)

theme_set(theme_minimal())

data.brute <- read.csv(
  "Dataset/divorce_df.csv",
  stringsAsFactors = FALSE
)