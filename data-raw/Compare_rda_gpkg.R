
library(sf)
library(EVERSpatDat)

wd="C:/Julian_LaCie/_GitHub/EVERSpatDat/"

datalist<-data(package = "EVERSpatDat")
datalist$results[,3]
data(list=datalist$results[,3]);# Loads all the data in the package
dat.list.shp=datalist$results[,3]

# st_write(get(dat.list.shp[1]),paste(wd,"geodat","EVERSpatDat.gpkg",sep="/"),dat.list.shp[1])
# for(i in 2:length(dat.list.shp)){
#   st_write(get(dat.list.shp[i]),paste(wd,"geodat","EVERSpatDat.gpkg",sep="/"),dat.list.shp[i])
#   print(i)
# }
# st_layers(paste(wd,"geodat","EVERSpatDat.gpkg",sep="/"))

## Check the files.
shore2=st_read(paste(wd,"geodat","EVERSpatDat.gpkg",sep="/"),"FWCShore_clip")
plot(st_geometry(shore2))

sloughs2=st_read(paste(wd,"geodat","EVERSpatDat.gpkg",sep="/"),"sloughs")
plot(st_geometry(sloughs2))


## Compare file sizes of rda vs gpkg
files = list.files(paste0(wd,"data"),full.names = T, recursive = T)
vect_size = sapply(files, file.size)
sum(vect_size)/1000000; #kb


files = list.files(paste0(wd,"geodat"),full.names = T, recursive = T)
vect_size = sapply(files, file.size)
sum(vect_size)/1000000; #kb
