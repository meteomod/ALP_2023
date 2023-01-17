# ------------------------------------------------------------------------------
# ------------------------- MONITOREO OLORES - ALPACOMA ------------------------
# ------------------------------------------------------------------------------
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
# ----------------------- METEREOLOGIA ALPACOMA  --------------------------
# ------------------------------------------------------------------------------
ALP_2023 <- read.csv(file = "ALPACOMA_METEREOLOGIA.csv", header = TRUE, sep = ";", dec = ",") 

ALP_2023$date <- as.POSIXct(ALP_2023$date,format="%d/%m/%Y %H:%M",tz="America/La_Paz")
ALP_2023$ws <- as.numeric(ALP_2023$ws) 
ALP_2023$wd <- as.numeric(ALP_2023$wd)
str(ALP_2023)

trendLevel(ALP_2023, pollutant = "ws") #velocidad del viento
trendLevel(ALP_2023, pollutant = "wd") #direccion del viento

# ------------------------------------------------------------------------------
# ----------------------- METEREOLOGIA ALPACOMA 2021  --------------------------
# ------------------------------------------------------------------------------
ALP_2021_VF <- read.csv(file = "LPZ_ALPACOMA_2021.csv", header = TRUE, sep = ";", dec = ",") 

ALP_2021_VF$date <- as.POSIXct(ALP_2021_VF$date,format="%d/%m/%Y %H:%M",tz="America/La_Paz")
ALP_2021_VF$Rainfall <- as.numeric(ALP_2021_VF$Rainfall) 
ALP_2021_VF$WindSpd.Avg <- as.numeric(ALP_2021_VF$WindSpd.Avg)
ALP_2021_VF$WindDir.Avg <- as.numeric(ALP_2021_VF$WindDir.Avg)
ALP_2021_VF$Radiation.Avg <- as.numeric(ALP_2021_VF$Radiation.Avg)
ALP_2021_VF$AirTemp.Avg <- as.numeric(ALP_2021_VF$AirTemp.Avg)
ALP_2021_VF$Humidity.Avg <- as.numeric(ALP_2021_VF$Humidity.Avg)
str(ALP_2021_VF)

trendLevel(ALP_2021_VF, pollutant = "Rainfall") #precipitacion [mm]
trendLevel(ALP_2021_VF, pollutant = "WindSpd.Avg") #velocidad del viento [m/s]
trendLevel(ALP_2021_VF, pollutant = "WindDir.Avg") #direccion del viento [°]
trendLevel(ALP_2021_VF, pollutant = "Radiation.Avg") #radiacion [W/m2]
trendLevel(ALP_2021_VF, pollutant = "AirTemp.Avg") #temperatura del aire [°C]
trendLevel(ALP_2021_VF, pollutant = "Humidity.Avg") #Humedad [%]

# ------------------------------------------------------------------------------
# ----------------------- METEREOLOGIA ALPACOMA 2022  --------------------------
# ------------------------------------------------------------------------------
ALP_2022_VF <- read.csv(file = "LPZ_ALPACOMA_2022.csv", header = TRUE, sep = ";", dec = ",") 

ALP_2022_VF$date <- as.POSIXct(ALP_2022_VF$date,format="%d/%m/%Y %H:%M",tz="America/La_Paz")
ALP_2022_VF$Rainfall <- as.numeric(ALP_2022_VF$Rainfall) 
ALP_2022_VF$WindSpd.Avg <- as.numeric(ALP_2022_VF$WindSpd.Avg)
ALP_2022_VF$WindDir.Avg <- as.numeric(ALP_2022_VF$WindDir.Avg)
ALP_2022_VF$Radiation.Avg <- as.numeric(ALP_2022_VF$Radiation.Avg)
ALP_2022_VF$AirTemp.Avg <- as.numeric(ALP_2022_VF$AirTemp.Avg)
ALP_2022_VF$Humidity.Avg <- as.numeric(ALP_2022_VF$Humidity.Avg)
str(ALP_2022_VF)

trendLevel(ALP_2022_VF, pollutant = "Rainfall") #precipitacion [mm]
trendLevel(ALP_2022_VF, pollutant = "WindSpd.Avg") #velocidad del viento [m/s]
trendLevel(ALP_2022_VF, pollutant = "WindDir.Avg") #direccion del viento [°]
trendLevel(ALP_2022_VF, pollutant = "Radiation.Avg") #radiacion [W/m2]
trendLevel(ALP_2022_VF, pollutant = "AirTemp.Avg") #temperatura del aire [°C]
trendLevel(ALP_2022_VF, pollutant = "Humidity.Avg") #Humedad [%]
