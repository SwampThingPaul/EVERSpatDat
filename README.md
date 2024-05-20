
# EVERSpatDat

## Table of Contents

- [Introduction](#intro)
- [Citing package](#cite)
- [Installation](#install)
- [Example](#example)
  - [tmap](%22#tmapExample)
  - [sf](#sfExample)

## Introduction

As more and more spatial data is becoming available this package was
intended to be a single source of general spatial data inspired by the
Florida Coastal Everglades Long Term Ecological Research Site [FCE
LTER](https://github.com/FCE-LTER/maps_FCE_sites_grayscale_base) study
area map repository.

## Citing package

``` r
citation('EVERSpatDat')
```

    ## 
    ## To cite package 'EVERSpatDat' in publications use:
    ## 
    ##   Paul Julian (2024). EVERSpatDat: Everglades Spatial Data. R package
    ##   version 0.1.0. https://github.com/SwampThingPaul/EVERSpatDat
    ## 
    ## A BibTeX entry for LaTeX users is
    ## 
    ##   @Manual{,
    ##     title = {EVERSpatDat: Everglades Spatial Data},
    ##     author = {Paul Julian},
    ##     year = {2024},
    ##     note = {R package version 0.1.0},
    ##     url = {https://github.com/SwampThingPaul/EVERSpatDat},
    ##   }

## Installation <a name="install"></a>

Development version can be installed from this repo using:

``` r
install.packages("devtools");# if you do not have it installed on your PC
devtools::install_github("SwampThingPaul/EVERSpatDat")
```

Currently there are no plans to send ths package to CRAN. However, in
the future that could change.

## Example

### tmap

Using the [FCE
LTER](https://github.com/FCE-LTER/maps_FCE_sites_grayscale_base)
`/r_scripts/FCE_map_grayscale_base.R` as an example.

``` r
library(sf)
library(tmap)
library(EVERSpatDat)

utm17<-st_crs("EPSG:26917");# CRS for NAD83 UTM17
# Load Package Data
datalist<-data(package = "EVERSpatDat"); # see a list of the dataset
data(list=datalist$results[,3]);# Loads all the data in the package

ENP <- subset(nps_clipped, UNIT_CODE=="EVER"); # Subsets for just ENP

tmap_mode("plot") 
bbox.lims<-st_bbox(c(xmin=461316,xmax=582555,ymin=2748545,ymax=2852277),crs=utm17)

main.map <- tm_shape(FWCShore_clip,projection = 26917,ylim=bbox.lims[c(2,4)],xlim=bbox.lims[c(1,3)]) +
  tm_polygons(col="#f0f0f0",border.col="#525252") +
  tm_shape(sloughs[2,]) +
  tm_polygons(col = "#969696",border.col = "#969696") +
  tm_add_legend(type = "fill",col = "#969696",border.col = "#969696",
                labels = "Shark River Slough",z = 5 # position in the legend
                ) +
  tm_shape(sloughs[1,]) +
    tm_polygons(col = "#cccccc",border.col = "#cccccc") +
    tm_add_legend(type = "fill", col = "#cccccc",border.col = "#cccccc",
                  labels = "Taylor Slough",z = 4) +
  tm_shape(ENP) +
    tm_borders(col = "#525252",lwd = 1.5,lty = "dashed") +
    tm_add_legend(type = "line",lwd = 1.5,lty = "dashed",col = "#525252",
                  labels = "Everglades National Park",z = 6) +
  tm_shape(US41_US1) +
    tm_lines(col = "#cc0000",lwd = 1.5,lty = "solid") +
    tm_add_legend(type = "line", lwd = 1.5,col = "#cc0000", 
                  labels = "US Highways",z = 2) +
  tm_shape(TTBridge) +
    tm_lines(col = "#ffff00",lwd = 8,lty = "solid") +
    tm_add_legend(type = "line", lwd = 6, col = "#ffff00", 
                  labels = "Tamiami Trail bridges",z = 7) + 
  tm_shape(canals) +
    tm_lines(col = "#0000cc",lwd = 0.75,lty = "solid") +
    tm_add_legend(type = "line", lwd = 0.75, col = "#0000cc",
                  labels = "Canals",z = 1) +
  tm_shape(SaltExtent) +
    tm_lines(col = "#00cccc",lwd = 3,lty = "solid") +
    tm_add_legend(type = "line", lwd = 3, col = "#00cccc", 
                  labels = "Saltwater intrusion 2018",z = 9) +
  tm_shape(FCELTER_sites) +
    tm_symbols(size=.25,shape = 19,col = "#000000")

map.leg <- tm_graticules(lines = FALSE,labels.size = 0.8) +
  tm_add_legend(
    type = "symbol", 
    size=.25,
    shape = 19,
    col = "#000000", 
    labels = "FCE sites",
    z = 0
  ) +
  tm_compass(
    north = 0,
    text.size = 1.2,
    show.labels = 1,
    cardinal.directions = c("N", "E", "S", "W"),
    lwd = 1) +
  tm_scale_bar(
    width = 0.15,
    text.size = 0.8,
    color.dark = "black",
    color.light = "white",
    lwd = 1) +
  tm_layout(
    bg.color = "#ffffff",
    outer.margins = 0.001,
    legend.show = TRUE,
    legend.text.size = 0.9,
    legend.position = c("left","bottom")
  ) 

main.map+map.leg
```

<img src="README_files/figure-gfm/FCELTER Map-1.png" style="display: block; margin: auto;" />

<br>

### sf

Or if you prefer the `sf` flavor.

``` r
library(mapmisc)
library(USAboundaries)

states.shp=USAboundaries::us_states(resolution ="low")|>
  as("Spatial")|>
  st_as_sf()|>
  st_transform(utm17)|>
  subset(stusps%in%c("FL","GA","AL"))

# bbox.lims=st_bbox(sloughs)
bbox.lims<-st_bbox(c(xmin=461316,xmax=582555,ymin=2748545,ymax=2852277),crs=utm17)

AOI.poly=raster::extent(bbox.lims)|>
  as("SpatialPolygons")|>
  st_as_sf()
st_crs(AOI.poly) = utm17

par(family="serif",mar=c(2,2,0.5,0.5),oma=c(1,1,0.75,0.5),plt=c(0.05,0.95,0.05,0.95));
layout(matrix(c(1:2),1,2),widths=c(1,0.5))

# Main plot
plot(st_geometry(FWCShore_clip),
     ylim=bbox.lims[c(2,4)],xlim=bbox.lims[c(1,3)],
     border="grey60",col = "grey90",
     graticule=st_crs("EPSG:4326"),
     lon=seq(-81.4,-80.2,0.3),lat=seq(24.8,25.8,0.3),
     axes=T)
plot(st_geometry(sloughs),add=T,col=c("grey80","grey59"),border=NA)
plot(st_geometry(ENP),add=T,lty=2,col=NA)
plot(st_geometry(US41_US1),add=T,col="red",lwd=1)
plot(st_geometry(TTBridge),add=T,col="yellow",lwd=3,lend=2)
plot(st_geometry(canals),add=T,col="blue",lwd=0.75)
plot(st_geometry(SaltExtent),add=T,col="darkturquoise",lwd=3)
plot(st_geometry(FCELTER_sites),add=T,pch=19,cex=1.25)
mapmisc::scaleBar(crs=FWCShore_clip,"bottomright",bty="n",cex=1,seg.len=4,outer=F)
box(lwd=1)

## Inset map
# idea from https://stackoverflow.com/a/21570835/5213091
opar <- par(plt=c(0.05,0.35,0.7,0.95),new=T)
bbox.lims<-st_bbox(subset(states.shp,stusps=="FL"))
plot.new()
plot(st_geometry(states.shp),col="grey60",lwd=0.5,
     ylim=bbox.lims[c(2,4)],xlim=bbox.lims[c(1,3)])
plot(st_geometry(AOI.poly),add=T,col=NA,border="red",lty=2,lwd=2)
box(lwd=1)

# if you wanted it on the side with the legend -- specify layout(matrix(c(1,1,2:3),2,2),widths=c(1,0.5))
# par(mar=c(0.5,0.5,0.5,0.5))
# plot(st_geometry(states.shp),col="grey60",lwd=0.5)
# plot(st_geometry(AOI.poly),add=T,col=NA,border="red",lty=2,lwd=2)
# box(lwd=1)

## Legend
par(mar=c(0.5,0.2,0.5,0.1))
plot(0:1,0:1,ann=F,axes=F,type="n")
legend("center",
       legend=c("FCE Sites",
                "Canals","US Highways",
                "Taylor Slough","Shark River Slough",
                "Everglades National Park",
                "Tamiami Trail Bridges",
                "Saltwater Intrusions (2018)"),
       pch=c(21,NA,NA,22,22,NA,NA,NA),
       pt.bg=c("black",NA,NA,"grey80","grey59",NA,NA,NA),
       lty=c(NA,1,1,NA,NA,2,1,1),lwd=c(NA,1.5,1,NA,NA,1,4,2),
       col=c("black","blue","red",NA,NA,"black","yellow","darkturquoise"),
       pt.cex=2,ncol=1,cex=0.8,bty="n",y.intersp=1.2,x.intersp=0.75,xpd=NA,xjust=0.5,yjust=0.5)
```

<img src="README_files/figure-gfm/FCELTER Map in SF-1.png" style="display: block; margin: auto;" />

------------------------------------------------------------------------
