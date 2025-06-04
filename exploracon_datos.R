######## EXPLORACION Y LIMPIEZA DE DATOS
library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)

# cargamos los datos
datos <- read.csv("netflix.csv")

# --- rellenar tabla + estadisticos
summary(datos)
sd(datos$Minutes,na.rm=T)
sd(datos$Seasons,na.rm=T)


# --- elementos unicos
length(unique(datos$type))
length(unique(datos$country))
length(unique(datos$director))
