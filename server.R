#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        modFit <- lm(len ~ dose, data= ToothGrowth)
        
        mod_Pred <- reactive({
                doseInput <- input$sliderSupp
                predict(modFit, newdata= data.frame(dose= doseInput))
        })
        
        output$pred1 <- renderText({
                round(mod_Pred(),1)
                })
   
})
