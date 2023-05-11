
library(tidyverse)
workshop_data <- read_csv("03_shiny/03_lebenserwartung/data/prepared/workshop_data.csv")


ggplotly(workshop_data %>% 
           # filter(Country == "Eswatini") %>% 
  ggplot(aes(x = Year, y = GdpPerCapita, color = Region, group = Country)) +
  geom_line()  +
  scale_y_log10())

workshop_data %>% 
  # filter(Country %in% c("Afghanistan", "Eswatini")) %>% 
  plotly::plot_ly(x = ~LifeExpectancy, color = ~Region, y = ~log10(GdpPerCapita),frame = ~Year, size = ~Population) %>% 
  plotly::add_trace()


install.packages("ggvis")

library(ggvis)
workshop_data %>% 
  filter(Year == 2000) %>% 
  ggvis(x = ~LifeExpectancy, y = ~log10(GdpPerCapita), size = ~Population, fill = ~Region) %>% 
  layer_points() %>% 
  ggvis::add_tooltip() %>% 
  ggvis::hide_legend("size")

