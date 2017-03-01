library(shiny)

shinyUI(fluidPage(
    tags$h1('Life Game'),
    column(4, wellPanel(
      sliderInput('dim', 'Dim', min=5, max=500, value = 10),
      actionButton(label='Next step', inputId = 'stepButton'),
      actionButton(label='Reset', inputId='reset'),
      tags$h2('Rules:'),
      tags$ol(
        tags$li('Any live cell with fewer than two live neighbours dies, as if caused by underpopulation'),
        tags$li('Any live cell with two or three live neighbours lives on to the next generation'),
        tags$li('Any live cell with more than three live neighbours dies, as if by overpopulation'),
        tags$li('Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction')
      )
    )),
    column(6, 
      plotOutput('life_matrix', width = 500, height = 500)
    )
))
