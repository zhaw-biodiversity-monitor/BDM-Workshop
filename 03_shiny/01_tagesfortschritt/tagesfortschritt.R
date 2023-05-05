library(shiny)
library(shinyWidgets)
library(lubridate)

#Calculation of time
now <- now()
hours_dec = hour(now) + minute(now) / 60 + second(now) / 3600;
percent <- hours_dec / 24 * 100

#UI
ui <- fluidPage(
  headerPanel("Tagesfortschritt"),
  sidebarPanel(
    p("Wie weit ist der Tag schon fortgeschritten?"),
    verbatimTextOutput(outputId = "percent_text", placeholder = FALSE),
    progressBar(id = "progress", value = 0, striped = TRUE, display_pct = TRUE)
  )
)

#Server
server <- function(input, output) {
  output$percent_text <- renderText({as.character(percent)})
  updateProgressBar(session = getDefaultReactiveDomain(), id = "progress", value = percent, unit_mark = "%")
}
  
shinyApp(ui, server)