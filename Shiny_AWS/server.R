library(shiny)

shinyServer(function(input, output) {
  
  # UI main_plot
  output$main_plot <- renderPlot({
    
    # barplot
    hist(faithful$eruptions,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "Time",
         main = "eruption time")
    
    # display individual_obs or not
    if (input$individual_obs) {
      rug(faithful$eruptions)
    }
    
    # display conditionalPanel or not
    if (input$density) {
      dens <- density(faithful$eruptions, adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
})