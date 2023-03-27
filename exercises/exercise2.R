# Exercise 2:

#Create a Shiny app that displays a map using the Leaflet package and allows users to add markers to the map. The app should also include sliders and checkboxes that allow users to filter and modify the displayed markers.

# Task:
# -Create a new Shiny app using shinyApp().
# -Load the Leaflet package using library(leaflet).
# -Create a UI that includes a leafletOutput(), a slider input for filtering markers by radius, and a checkbox input for displaying/hiding a specific marker.
# -In the server function, create a reactive dataset that filters markers based on the radius input and the checkbox input.
# -Create a Leaflet map using leaflet(). Set the initial view of the map to a specific location and zoom level using setView().
# -Add the filtered markers to the map using addMarkers(). Set the markers to their respective locations and add popup messages using popup().
# -Create an observe event that listens for a click on the map. When a click is detected, add a new marker to the map using addMarkers() at the location of the click.

#Solution:
library(shiny)
library(leaflet)

ui <- fluidPage(
  leafletOutput("map"),
  sliderInput("radius", "Radius of Marker Filter (miles)", min = 0, max = 10, value = 5),
  checkboxInput("empire_state_building", "Show Empire State Building Marker", value = TRUE)
)

server <- function(input, output, session) {
  
  # define marker data frame
  marker_data <- data.frame(
    label = c("Statue of Liberty", "Central Park", "Brooklyn Bridge", "Empire State Building"),
    lat = c(40.6892, 40.7829, 40.7061, 40.7484),
    lng = c(-74.0445, -73.9654, -73.9969, -73.9857)
  )
  
  # define reactive dataset of filtered markers
  filtered_markers <- reactive({
    radius_filter <- input$radius
    checkbox_filter <- input$empire_state_building
    
    if (checkbox_filter) {
      filtered_data <- marker_data
    } else {
      filtered_data <- marker_data[-4, ]
    }
    
    filtered_data <- filtered_data[apply(filtered_data[, 2:3], 1, function(x) {
      dist <- geosphere::distHaversine(p1 = c(x[1], x[2]), p2 = c(40.7484, -73.9857)) / 1609.344
      dist <= radius_filter
    }), ]
    
    filtered_data
  })
  
  # render leaflet map
  output$map <- renderLeaflet({
    leaflet() %>% 
      setView(lng = -73.9857, lat = 40.7484, zoom = 12) %>% 
      addTiles() %>% 
      addMarkers(data = filtered_markers(), 
                 label = ~label, 
                 popup = ~label, 
                 clusterOptions = markerClusterOptions(),
                 group = "markers")
  })
  
  # add observe event for adding new markers
  observe({
    click <- input$map_click
    if (!is.null(click)) {
      leafletProxy("map") %>% 
        addMarkers(lng = click$lng, lat = click$lat, popup = "New Marker", group = "markers")
    }
  })
}

shinyApp(ui, server)
