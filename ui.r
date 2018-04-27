library(shiny)
library(shinydashboard)
library(leaflet)
## leafletOutput is used at the ui side to display the rendered map.
EQ=read.csv("query (3).csv")

shinyUI(fluidPage(
  sliderInput("count","Amount of Earthquakes",10,10000,20),
  leafletOutput("map")
))

