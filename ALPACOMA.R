# ---------------------------------------------------------------------
# -------------------- MONITOREO OLORES - ALPACOMA --------------------
# ---------------------------------------------------------------------
# --------- cargado de librerias -----------
library(readxl)
library(dplyr)
library(ggplot2) #graficos
library(wesanderson) #paletas de colores
library(lubridate) #fechas
library(tidyverse)
library(stringr)
library(lattice)
library(plyr)
library(gridExtra)
library(openair)
library(devtools)
# ------------------------------------------------------------------------------
# -------- 1) IMPORTAR DESDE EXCEL Y PASAR LOS DATOS A DATAFRAME ---------------
# ------------------------------------------------------------------------------
ALP_2023 <- read.csv(file = "ALPACOMA_METEREOLOGIA.csv", header = TRUE, sep = ";", dec = ",") 

ALP_2023$date <- as.POSIXct(ALP_2023$date,format="%d/%m/%Y %H:%M",tz="America/La_Paz")
ALP_2023$ws <- as.numeric(ALP_2023$ws) 
ALP_2023$wd <- as.numeric(ALP_2023$wd)
str(ALP_2023)
# ------------------------------------------------------------------------------
# ------------------ 2) GRAFICOS ELABORADOS CON OPENAIR  -----------------------
# ------------------------------------------------------------------------------
trendLevel(ALP_2023, pollutant = "ws") #velocidad del viento
trendLevel(ALP_2023, pollutant = "wd") #direccion del viento

