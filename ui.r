library(shiny)
library(shinydashboard)
library(leaflet)


shinyUI(fluidPage(
  dashboardHeader(title = "Eartquake Position | Hover for Magnitude"),
  sliderInput("count","Amount of Earthquakes",10,10000,20),
  leafletOutput("map")
))