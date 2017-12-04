library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Coursera Shiny App"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of points:",
                   min = 1,
                   max = 10,
                   value = 10),
       textOutput("description")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       textOutput("documentation")
    )
  )
))
