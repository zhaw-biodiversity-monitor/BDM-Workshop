library(shiny)
library(shinyWidgets)
library(lubridate)

#Calculation of time
now <- now()
hours_dec <- hour(now) + minute(now) / 60 + second(now) / 3600;
percent <- hours_dec / 24 * 100

#UI
ui <-tagList(
  tags$head(tags$title("Tagesfortschritt")),
  tags$h3("Wie weit ist der Tag schon fortgeschritten?"),
  tags$hr(),
  tags$p(textOutput("percent_text")),
  uiOutput("progress_bar")
)

#Server
server <- function(input, output) {
  output$percent_text <- renderText({as.character(paste(round(percent, 2), "%"))})
  
  output$progress_bar <- renderUI({
    tags$progress(id = "progress_bar", value = percent, max = 100)
  })
}
  
shinyApp(ui, server)