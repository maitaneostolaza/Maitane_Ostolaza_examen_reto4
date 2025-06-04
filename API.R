# CREACION API
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


#* @apiTitle Api examen
#* @apiDescription histograma de la distribucion duration
#* @param transformacion
#* @get /histograma
function(transformacion){
  datos <- read.csv("C:\\Users\\maita\\OneDrive\\Escritorio\\RETO 4\\DATA SCIENCE\\Maitane_Ostolaza_examen_reto4\\netflix.csv")
  datos$Minutes <- as.numeric(datos$Minutes)
  variable <- datos$Minutes
  variable_transformado <- log(variable)
  if(transformacion == T){
    return(hist(variable_transformado))
  }else{
    return(hist(variable))
  }
}

