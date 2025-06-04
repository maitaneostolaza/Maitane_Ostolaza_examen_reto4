# LIMPIEZA DE DATOS
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

# -- A) numeoro de NA's por variable, numero NA, porcentaje
miss_var_summary(datos)

# -- B) visualizar distribucion NA
vis_miss(datos)

# -- C) IMPUTACION
# imputamos la variable minutes con knn con knn
datos_imputados <- kNN(datos, variable = "Minutes", 
                       dist_var = colnames(datos), k =3)


# imputamos con 0 si es peli, con 1 si es serie
datos_imputados$Seasons <- ifelse(datos_imputados$type == "Movie",0,1)
datos_imputados <- datos_imputados[,-12]



