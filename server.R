library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    plot_data <- data.frame(x = c(1,2,3,4,5,6,7,8,9,10),
                            y = c(10,9,8,7,6,5,4,3,2,1))
    plot(x=plot_data$x[1:input$bins], 
         y=plot_data$y[1:input$bins],
         main="Pointcloud",
         xlab="X",
         ylab="Y",
         xlim=c(1,10),
         ylim=c(1,10))
  })
  
  output$description <- renderText ({
    "Please select the number of points to be displayed in the plot."
  })
  
  output$documentation <- renderText ({
    "DOCUMENTATION:
    This app is used to display as many data points in an R plot as the user wishes to see.
    The users use the slider widget to input their choice."
  })
})
