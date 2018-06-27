library(shiny)
shinyUI(bootstrapPage(
  
  headerPanel("Shiny App"),
  
  # left layout
  sidebarPanel(
    
    # Select Bins
    selectInput(inputId = "n_breaks",label = "Bins",choices = c(10, 20, 35, 50),selected = 20),
    
    # Checkbox
    checkboxInput(inputId = "individual_obs",label = strong("observation points"),value = FALSE),
    
    # Checkbox
    checkboxInput(inputId = "density",label = strong("Density Curve"),value = FALSE)
  ),
  
  # main panel
  mainPanel(
    plotOutput(outputId = "main_plot", height = "300px"),
    
    conditionalPanel(condition = "input.density == true",
                     sliderInput(inputId = "bw_adjust",label = "band adjustment", min = 0.2, max = 2, value = 1, step = 0.2)
    )
  )
))