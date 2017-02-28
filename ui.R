library(shiny)

shinyUI(fluidPage(
    plotOutput('life_matrix'),
    actionButton(label='Next step', inputId = 'stepButton'),
    actionButton(label='Reset', inputId='reset'),
    sliderInput('dim', 'Dim', min=5, max=50, value = 10)
))
