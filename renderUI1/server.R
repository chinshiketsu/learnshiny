# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  # reactive conductor
  citylist <- reactive({
      switch(input$province,
             "iris"  = names(iris),
             "mtcars"= names(mtcars),
             "trees" = names(trees)
             )
  })
  
  

  output$city <- renderUI({
      selectInput("cityvar", "select city", choices=citylist())
      
  })
  
  
  mid <- reactive({
      if ( !is.null(intpu$cityvar) ){
          switch(input$cityvar,
                 "Grith"=c("1","2","3"),
                 "Height"=c("2")
          ) 
      }
      
  })
  output$county <- renderUI({
      selectInput("variabley","selecty county", choices= mid())
  })

  

})
