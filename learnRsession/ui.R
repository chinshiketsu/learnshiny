
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
    h3("URL conponents"),
    verbatimTextOutput("urlText"),
    
    h3("Parsed query string"),
    verbatimTextOutput("queryText")
))
