# ---- Packages ----
library(tidyverse)
library(survival)
library(survminer)
library(knitr)
library(kableExtra)
library(dplyr)
library(gridExtra)
library(ggplot2)
library(MASS)
library(muhaz)
library(broom)
library(flexsurv)
library(ggfortify)
library(plotly)
library(RColorBrewer)
library(htmltools)

# ---- Options ----
options(digits = 4)
theme_set(theme_minimal())

# ---- Import des données (si tu veux centraliser ici) ----
data.brute <- read.csv("Dataset/divorce_df.csv")
