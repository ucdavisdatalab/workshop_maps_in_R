# Quarto can't see the variables from previous chapters [commentary withheld] so we need to run a script that will load the data invisibly	



library(sf)   # for working with spatial data
library(terra)


monsters <- st_read("data/LakeMonsters.gpkg")
lakes <- st_read("data/Lakes_GreatLakes-Area.gpkg")
states <- st_read("data/US_CAN_Admin1.gpkg")
dem <- rast("data/dem.tif")