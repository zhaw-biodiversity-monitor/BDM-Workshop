
library(tidyverse)
library(plotly)
workshop_data <- read_csv("03_Shiny_GDP/03_lebenserwartung/data/prepared/workshop_data.csv")


ggplotly(workshop_data %>% 
           # filter(Country == "Eswatini") %>% 
  ggplot(aes(x = Year, y = GdpPerCapita, color = Region, group = Country)) +
  geom_line()  +
  scale_y_log10())




install.packages("ggvis")

library(ggvis)


myggvis <- function(dataset, year){
  dataset %>% 
    filter(Year == year) %>% 
    ggvis(x = ~LifeExpectancy, y = ~log10(GdpPerCapita), size = ~Population, fill = ~Region) %>% 
    layer_points() %>% 
    ggvis::hide_legend("size")
}

myggvis(workshop_data, 1987)


