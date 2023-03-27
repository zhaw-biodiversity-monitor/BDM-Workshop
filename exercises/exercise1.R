# Exercise 1:
  
#Create a Shiny app that displays a map using the Leaflet package and allows users to add markers to the map.

#Task:

# -Create a new Shiny app using shinyApp().
# -Load the Leaflet package using library(leaflet).
# -Create a UI that includes a leafletOutput().
# -In the server function, create a Leaflet map using leaflet(). Set the initial view of the map to a specific location and zoom level using setView().
# -Add a marker to the map using addMarkers(). Set the marker to a specific location and add a popup message using popup().
# -Create an observe event that listens for a click on the map. When a click is detected, add a new marker to the map using addMarkers() at the location of the click.

#Solution:
library(shiny)
library(leaflet)

ui <- fluidPage(
  leafletOutput("map")
)

server <- function(input, output, session) {
  output$map <- renderLeaflet({
    leaflet() %>% 
      addTiles() %>% 
      setView(lng = -73.9857, lat = 40.7484, zoom = 13) %>% 
      addMarkers(lng = -73.9857, lat = 40.7484, 
                 popup = "Empire State Building")
  })
  
  observe({
    click <- input$map_click
    if (!is.null(click)) {
      leafletProxy("map") %>% 
        addMarkers(lng = click$lng, lat = click$lat)
    }
  })
}

shinyApp(ui, server)
