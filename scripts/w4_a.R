# Load leaflet library
library(leaflet)
# The basic leaflet widget shows an empty map widget with no tiles or markers
map <- leaflet()

# Adding tiles to the map
# By default, if no argument is passed it creates an OpenStreetMap
map<-leaflet()%>%addTiles()
map
# added marker at Delhi India
map<-leaflet()%>%
    addTiles()%>%
    addMarkers(lng=77.1025,lat=28.7041,
             popup="Delhi,India")
map<-leaflet()%>%
  addTiles()%>%
  addMarkers(lng=82.0668,lat=17.0894,
             popup="Aditya,India")
