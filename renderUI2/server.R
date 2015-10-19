
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$tabs <- renderUI({
    tab.title <- lapply(paste("tab no.", 1:(input$n), sep = " "), tabPanel)
    do.call(tabsetPanel,tab.title)
  })

})  
