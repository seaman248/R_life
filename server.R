#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

source('./functions/random_matrix.R')
source('./functions/timeout.R')
source('./functions/step.R')

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  life_matrix <- reactive({
    for(i in 1:5){
      output$distPlot <- random_matrix(10)
    }
  })
  
  output$distPlot <- life_matrix[[1]]
  
})
