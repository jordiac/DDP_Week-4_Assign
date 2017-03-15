#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict Tooth length for a Guinea Pig"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderSupp",
                   "What is the Supplement Dose (mg/day)?",
                   min = 0.5,
                   max = 2,
                   value = 1, step=0.5)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Predicted Tooth length (in microns):"),
       textOutput("pred1")
    )
  )
))
