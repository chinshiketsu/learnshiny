library(shiny)
shinyApp(
  
  ui = fixedPage(
      textOutput('tx', container=h1),
      plotOutput('pl', width='100%', height='400px')
  ),
  
  server = function(input, output, session) {
      output$tx <- renderText({"This is output code" })
      output$pl <- renderPlot({
          a <- rnorm(20)
          par( mar=c(3, 3, 0.5, 0.5), mgp=c(2, 0.5, 0) )
          plot(a)
      })
  }
  
)

