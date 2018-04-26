library(shiny)
library(leaflet)

EQ=read.csv("query.csv")
Tsunami=read.csv("tsunami.csv")


shinyServer(function(input, output) {
  output$mymap <- renderLeaflet({
    leaflet(data = EQ[1:input$count,]) %>% addTiles() %>% 
      addMarkers(~longitude, ~latitude, popup = ~as.character(time), label=~as.character(depth))
    })
  

  output$map <- renderLeaflet({
        leaflet(data = Tsunami[1:15,]) %>% addTiles() %>% 
	addMarkers(~LONGITUDE, ~LATITUDE, popup = ~as.character(CAUSE_CODE), label=~as.character(PRIMARY_MAGNITUDE))
  })

})