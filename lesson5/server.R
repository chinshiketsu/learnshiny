
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(maps)
library(mapproj)
source("helpers.R")
  
counties <- readRDS("data/counties.rds")

shinyServer( 
    function(input, output){
        output$map <- renderPlot({
            data <- switch(input$combobox ,
                "Percent White"    =counties$white,
                "Percent Black"    =counties$black,
                "Percent Hispanic" =counties$hispanic,
                "Percent Asian"    =counties$asian  
            )
            
            color <- switch(input$combobox,
                "Percent White"    ="darkgreen",
                "Percent Black"    ="black",
                "Percent Hispanic" ="darkorange",
                "Percent Asian"    ="yellow"  
            )
            title <- switch(input$combobox,
                "Percent White"    ="%White",
                "Percent Black"    ="%Black",
                "Percent Hispanic" ="%Hispanic",
                "Percent Asian"    ="%Asian"
            )
            percent_map(var=data,color=color,legend.title=title,
                        max=input$color_range[2], min=input$color_range[1])
          
        })  
    }
)