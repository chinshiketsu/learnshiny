
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("censusVis"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
      sidebarPanel(
          helpText("Create demographic maps with 
                 information from the 2010 US Census."), 
          selectInput("combobox",
              label = "Choose a variable to display",
              choices=c("Percent White", 
                      "Percent Black",
                      "Percent Hispanic",
                      "Percent Asian"
                       ),
              selected="Percent White"
          ),
          sliderInput("color_range", label="Range of interest:",
                    min=0,max=100, value=c(0,100)
          )
      ),
  
      # Show a plot of the generated distribution
      mainPanel( plotOutput("map") )
  )
))
