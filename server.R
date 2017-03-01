library(shiny)

source('./functions/random_matrix.R')
source('./functions/step.R')


shinyServer(function(input, output, session) {
  
  values <- reactiveValues(m=random_matrix(10))
  
  observeEvent(input$stepButton, {
    values$m <- step(values$m)
  })
  
  observe({
    values$m <- random_matrix(input$dim)
  })
  
  observeEvent(input$reset, {
    values$m <- random_matrix(input$dim)
  })
  
  output$life_matrix <- renderPlot({
    image(values$m, axes=F, col=c('white', 'black'), useRaster = T)
  })
  
})
