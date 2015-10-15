
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output, session) {
    #store data in variable for convenience
    cdata <- session$clientData
    
    #render text
    output$clientdataText <- renderText({
        cnames <- names(cdata)   
        allvalues <- lapply(cnames, function(name){
            paste(name, cdata[[name]], sep=" = ")   
        })
        paste(allvalues, collapse = '\n')
    })
    
#     #return the components of the URL in a string
#     output$urlText <- renderText({
#         paste(
#             sep="",
#             "protocol: ",session$clientData$url_protocol,"\n",
#             "hostname: ",session$clientData$url_hostname,"\n",
#             "pathname: ",session$clientData$url_pathname,"\n",
#             "port: "    ,session$clientData$url_port    ,"\n",
#             "search: "  ,session$clientData$url_search  ,"\n"
#         )   
#     })
    
#     #Parse the GET query string
#     output$queryText <- renderText({
#         query <- parseQueryString(session$clientData$url_search)
#         
#         #return a string with key-val pairs
#         paste(names(query), query, sep="=", collapse=", ")
#         session
#     })
    
})
