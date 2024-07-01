## Internal Data Prep

library(sf)
# library(tmap)
utm17=st_crs("EPSG:26917")
# tmap_mode("view")

path="C:/Julian_LaCie/_GitHub/EVERSpatDat/maps_FCE_sites_grayscale_base-main"
# SaltExtent --------------------------------------------------------------
## From FCE Repo https://github.com/FCE-LTER/maps_FCE_sites_grayscale_base

SaltExtent=st_transform(st_read(paste0(path,"/shapefiles"),"InlandExtentOfSaltwater_2018"),utm17)
plot(SaltExtent)
usethis::use_data(SaltExtent,internal=F,overwrite=T)


# Tamiami Trail Bridges ---------------------------------------------------

TTBridge=st_transform(st_read(paste0(path,"/shapefiles"),"Tamiami_trail_bridges"),utm17)
plot(st_geometry(TTBridge))
usethis::use_data(TTBridge,internal=F,overwrite=T)


# LTER sites --------------------------------------------------------------

FCELTER_sites=st_transform(st_read(paste0(path,"/shapefiles"),"ltersites_current_utm"),utm17)
plot(st_geometry(FCELTER_sites))
usethis::use_data(FCELTER_sites,internal=F,overwrite=T)


# sloughs -----------------------------------------------------------------

srs_clipped=st_transform(st_read(paste0(path,"/shapefiles"),"srs_utm_clipped"),utm17)
ts_clipped=st_transform(st_read(paste0(path,"/shapefiles"),"taylor_slough_utm_clipped"),utm17)
sloughs=rbind(ts_clipped,srs_clipped)

plot(st_geometry(sloughs))
usethis::use_data(sloughs,internal=F,overwrite=T)


# US_41 -------------------------------------------------------------------
US41=paste0(path,"/shapefiles")|>
  st_read("US41_US1")|>
  st_transform(utm17)
plot(st_geometry(US41))

US41_US1=US41

usethis::use_data(US41_US1,internal=F,overwrite=T)


# SFWMD bounds ------------------------------------------------------------
link="https://services1.arcgis.com/sDAPyc2rGRn7vf9B/arcgis/rest/services/BDWMD_Boundary_Area/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
wmd=link|>
  st_read()|>
  st_transform(utm17)

plot(st_geometry(wmd))

sfwmd_bound=subset(wmd,WMDNAME=="SFWMD")
plot(st_geometry(sfwmd_bound))
usethis::use_data(sfwmd_bound,internal=F,overwrite=T)


# Shoreline ---------------------------------------------------------------

# 1:12000 scale
link="https://atoll.floridamarine.org/arcgis/rest/services/FWC_GIS/OpenData_Shoreline/MapServer/0/query?outFields=*&where=1%3D1&f=geojson"
FWCShore1=link|>
  st_read()|>
  st_transform(utm17)

# 1:40000 scale
link="https://atoll.floridamarine.org/arcgis/rest/services/FWC_GIS/OpenData_Shoreline/MapServer/1/query?outFields=*&where=1%3D1&f=geojson"
FWCShore=link|>
  st_read()|>
  st_transform(utm17)

FWCShore_clip=st_intersection(FWCShore1,st_buffer(sfwmd_bound,dist=10000))

plot(st_geometry(FWCShore_clip))

usethis::use_data(FWCShore_clip,internal=F,overwrite=T)


# SFWMD projects ----------------------------------------------------------

link="https://services1.arcgis.com/sDAPyc2rGRn7vf9B/arcgis/rest/services/Water_Projects_Components/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
SFWMD_Projects=link|>
  st_read()|>
  st_transform(utm17)

plot(st_geometry(SFWMD_Projects))

usethis::use_data(SFWMD_Projects,internal=F,overwrite=T)


# Canals ------------------------------------------------------------------

link="https://services1.arcgis.com/sDAPyc2rGRn7vf9B/arcgis/rest/services/AHED_Hydroedges/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
SFWMD_Canals=link|>
  st_read()|>
  st_transform(utm17)


head(SFWMD_Canals)

plot(st_geometry(SFWMD_Canals))
plot(st_geometry(subset(SFWMD_Canals,is.na(NAME)==T)),add=T,col="red")
plot(st_geometry(subset(SFWMD_Canals,is.na(NAME)==F)))

unique(SFWMD_Canals$FLOWLINETYPE)
unique(SFWMD_Canals$VIEW_PRIORITY)
unique(SFWMD_Canals$CARTO)
unique(SFWMD_Canals$EDGETYPE)
with(subset(SFWMD_Canals,is.na(VIEW_PRIORITY)==F),unique(CARTO))

plot(st_geometry(subset(SFWMD_Canals,VIEW_PRIORITY==1)))
plot(st_geometry(subset(SFWMD_Canals,VIEW_PRIORITY==2)))
plot(st_geometry(subset(SFWMD_Canals,is.na(VIEW_PRIORITY)==F&FLOWLINETYPE==2&HYDRO_ORDER=="PRIMARY")))
plot(st_geometry(subset(SFWMD_Canals,is.na(FLOWLINETYPE)==T)))
plot(st_geometry(subset(SFWMD_Canals,CARTO==0)))

tm_shape(subset(SFWMD_Canals,is.na(VIEW_PRIORITY)==F&FLOWLINETYPE==2&HYDRO_ORDER=="PRIMARY"))+tm_lines("blue")

## generalized canals for SFWMD
fce_canals=paste0(path,"/shapefiles/canals_utm.shp")|>
  st_read()|>
  st_transform(utm17)
plot(st_geometry(fce_canals))
canals=fce_canals

usethis::use_data(canals,internal=F,overwrite=T)


# ENP/EvPA/BCNP -----------------------------------------------------------
## On local machine
# ENP="C:/Julian_LaCie/_GISData/SFER_GIS_Geodatabase.gdb"|>
#   st_read("ENP")|>
#   st_transform(utm17)
# plot(st_geometry(ENP))
# usethis::use_data(ENP,internal=F,overwrite=T)
#
# WCAs="C:/Julian_LaCie/_GISData/SFER_GIS_Geodatabase.gdb"|>
#   st_read("WCAs")|>
#   st_transform(utm17)
# plot(st_geometry(WCAs))
# usethis::use_data(WCAs,internal=F,overwrite=T)
#
EvPA="C:/Julian_LaCie/_GISData/SFER_GIS_Geodatabase.gdb"|>
  st_read("EPA_Boundary")|>
  st_transform(utm17)
plot(st_geometry(EvPA))
usethis::use_data(EvPA,internal=F,overwrite=T)

## also https://geo-sfwmd.hub.arcgis.com/datasets/78f52a0996a14d55ac411dc7ee2ec002_0/explore?location=25.755687%2C-80.870991%2C8.68
## tributaries https://geo-sfwmd.hub.arcgis.com/datasets/4d54be53384e47b78e42aaeb031bb3ab_0/explore?location=26.043717%2C-80.697524%2C8.90

#
# BCNP="C:/Julian_LaCie/_GISData/SFER_GIS_Geodatabase.gdb"|>
#   st_read("BCNP")|>
#   st_transform(utm17)
# plot(st_geometry(BCNP))
# usethis::use_data(BCNP,internal=F,overwrite=T)

## Lake Okeechobee
LOK="C:/Julian_LaCie/_GISData/SFWMD"|>
  st_read("LakeOkeechobee_general")|>
  st_transform(utm17)
plot(st_geometry(LOK))
usethis::use_data(LOK,internal=F,overwrite=T)

## NPS boundary
link="https://services1.arcgis.com/fBc8EJBxQRMcHlei/arcgis/rest/services/NPS_Land_Resources_Division_Boundary_and_Tract_Data_Service/FeatureServer/2/query?outFields=*&where=1%3D1&f=geojson"
nps_all=link|>
  st_read()|>
  st_transform(utm17)

nps_clipped=subset(nps_all,UNIT_NAME%in%c("Dry Tortugas National Park","Biscayne National Park","Everglades National Park","Big Cypress National Preserve"))
plot(st_geometry(nps_clipped))
usethis::use_data(nps_clipped,internal=F,overwrite=T)

## FWS https://gis-fws.opendata.arcgis.com/datasets/fws::fws-national-realty-approved-acquisition-boundaries/explore?location=26.253088%2C-79.445717%2C6.94
link="https://services.arcgis.com/QVENGdaPbd4LUkLV/arcgis/rest/services/FWSApproved_Authoritative/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
refuges_all=link|>
  st_read()|>
  st_transform(utm17)

prop.vals=c("Arthur R. Marshall Loxahatchee NWR",
           "Florida Panther NWR","Ten Thousand Islands NWR")
#            ,"Crocodile Lake NWR","J. N. Ding Darling NWR","National Key Deer Refuge"
#            ,"Key West NWR","Great White Heron NWR"
#            ,"Everglades Headwaters NWR and CA")

refuges_clipped=subset(refuges_all,LABELNAME%in%prop.vals)
plot(st_geometry(refuges_clipped))
usethis::use_data(refuges_clipped,internal=F,overwrite=T)

## SFWMD WCAs
# link="https://services1.arcgis.com/sDAPyc2rGRn7vf9B/arcgis/rest/services/AHED_Watersheds/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
link="https://geoweb.sfwmd.gov/agsext1/rest/services/WaterManagementSystem/DrainageAreas/FeatureServer/1/query?outFields=*&where=1%3D1&f=geojson"
wmd_basins=link|>
  st_read()|>
  st_transform(utm17)

plot(st_geometry(wmd_basins))

prop.vals=c(
  "CONSERVATION AREA 1",
  "CONSERVATION AREA 2A","CONSERVATION AREA 2B",
  "CONSERVATION AREA 3A","CONSERVATION AREA 3B")

WCAs=subset(wmd_basins,NAME%in%prop.vals)

plot(st_geometry(WCAs))
usethis::use_data(WCAs,internal=F,overwrite=T)

## EAA
link="https://services1.arcgis.com/sDAPyc2rGRn7vf9B/arcgis/rest/services/HYMGT_EFA_AREA/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
eaa=link|>
  st_read()|>
  st_transform(utm17)

plot(st_geometry(eaa))
usethis::use_data(eaa,internal=F,overwrite=T)


## SFWMD Water Bodies
link="https://geoweb.sfwmd.gov/agsext1/rest/services/WaterManagementSystem/Waterbodies/FeatureServer/2/query?outFields=*&where=1%3D1&f=geojson"
SFWMD_waterbodies=link|>
  st_read()|>
  st_transform(utm17)

head(SFWMD_waterbodies)
unique(subset(SFWMD_waterbodies,WATERBODYTYPE==2)$HYDRO_ORDER)

plot(st_geometry(subset(SFWMD_waterbodies,WATERBODYTYPE==2&HYDRO_ORDER=="PRIMARY")))

exclude.vars=c("C-44 RESERVOIR","LAKE OKEECHOBEE","LAKE HICPOCHEE","ORANGE RIVER","10MI_RES","EAGLE BAY","SHELL CREEK")
lakes=subset(SFWMD_waterbodies,WATERBODYTYPE==2&HYDRO_ORDER=="PRIMARY"&is.na(NAME)==F&!(NAME%in%exclude.vars))

tm_shape(lakes)+tm_polygons("blue")+
  tm_shape(fce_canals)+tm_lines("red")
  # tm_shape(subset(SFWMD_Canals,is.na(VIEW_PRIORITY)==F&FLOWLINETYPE==2&HYDRO_ORDER=="PRIMARY"))+tm_lines("lightblue",lwd=2)

usethis::use_data(lakes,internal=F,overwrite=T)

## FL Tribal Areas
link="https://services9.arcgis.com/Gh9awoU677aKree0/arcgis/rest/services/TIGER_INDIAN_LANDS_AREAS_2020/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
TribalAreas_all=link|>
  st_read()|>
  st_transform(utm17)

TribalAreas=st_intersection(TribalAreas_all,sfwmd_bound)
plot(st_geometry(TribalAreas))
usethis::use_data(TribalAreas,internal=F,overwrite=T)


## WERP
path="C:/Julian_LaCie/_GitHub/WERP_WQ/GIS/WERP_Boundry/WERP.gdb"
WERPBound=path|>
  st_read("Polygons")|>
  st_transform(utm17)

plot(st_geometry(WERPBound))
usethis::use_data(WERPBound,internal=F,overwrite=T)

## BBSEER
path="C:/Julian_LaCie/_GitHub/BBSEER_WQ/GIS"
BBSEERBound=path|>
  st_read("BBSEER_PRJBND_09092020")|>
  st_transform(utm17)

plot(st_geometry(BBSEERBound))
usethis::use_data(BBSEERBound,internal=F,overwrite=T)



# CSSS  -------------------------------------------------------------------
# https://hub.arcgis.com/datasets/bf39292c66a74906b122dfd2ea3c3574/explore?layer=0
# path="C:/Julian_LaCie/_GISData/DOI/EVER_BIO_CSSsubpop"
# CSSSSubpops=path|>
#   st_read("3b3f64ae-76e0-42fd-8bf2-e870963c3469202031-1-14gfy5z.jk1b")|>
#   st_transform(utm17)
# https://www.sciencebase.gov/catalog/item/611c57f1d34e40dd9c00029b
path="C:\\Julian_LaCie\\Models\\EverSparrow\\csss_polygons"
CSSSSubpops=path|>
  st_read("csss_polygons")|>
  st_transform(utm17)

plot(st_geometry(subset(CSSSSubpops,OBJECTID!=0)))
CSSSSubpops=subset(CSSSSubpops,OBJECTID!=0)
usethis::use_data(CSSSSubpops,internal=F,overwrite=T)



# LOSOM study area --------------------------------------------------------

LOSOM="C:/Julian_LaCie/_GitHub/LOSOM_ModelEval/GIS"|>
  st_read("LOSOM_StudyArea_PJ")|>
  st_transform(utm17)

plot(st_geometry(LOSOM))

usethis::use_data(LOSOM,internal=F,overwrite=T)


# LOWRP -------------------------------------------------------------------
GIS.path.gen="C:/Julian_LaCie/_GISData"
watersheds=paste(GIS.path.gen,"AHED_release/AHED_20171102.gdb",sep="/")|>
  st_read("WATERSHED")|>
  st_transform(utm17)

wbd=paste(GIS.path.gen,"NHD/WBD/WBD_03_HU2_GPKG.gpkg",sep="/")|>
  st_read("WBDHU10")|>
  st_transform(utm17)

LOWRP=subset(wbd,huc10%in%paste0("0309010",c(201,120,301,121,203,202,302,303,304)))
LOWRP$project="LOWRP"
LOWRP.dis=aggregate(LOWRP["project"],by=list(diss=LOWRP$project),
                    FUN=function(x)x[1],do_union=T)
LOWRP=LOWRP.dis

usethis::use_data(LOWRP,internal=F,overwrite=T)
