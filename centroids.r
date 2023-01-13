#install necessary packages 
install.packages('rgdal')
install.packages('cartography')
#call the libraries
library(rgdal)
library(cartography)
#set working directory
setwd("E:/ACADEMIC/3RD year GIS/GEOSPATIAL ANALYSIS/data")
#call shapefile from folder location
ROI <- readOGR(dsn = ".",layer = 'AOI_0323-2019')
#plot the shapefile
plot(ROI)
#add aesthetics to your shapefile
plot(ROI,col='white',bg='lightblue',lwd=2)
#add tittle to your map
layoutLayer(title="My Region of Interest: AOI ", tabtitle = TRUE, frame=TRUE, scale=10)
#find centroids
cents <- coordinates(ROI)
#add aesthetics to your centroids
points(cents, col='red')
