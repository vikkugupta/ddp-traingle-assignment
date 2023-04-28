library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel(" Calculate the Area and  hypotenuse of the triangle"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput("box1", "Enter the side (base) of a right-angled triange", value = "Tab 1!"),
      numericInput("box2", "Enter the side (height) of the right-angled triange", value = "Tab 2!")
      
    ),
    
    # Main Panel
    mainPanel(
      tabsetPanel(type= "tabs",
                  tabPanel("Area of the Traingle",br(), textOutput("out1")),
                  tabPanel("The Hypotenuse of triangle",br(), textOutput("out2")),
                  helpText("This application is designed to calculate the area and hypotenuse of the triangle.")
                  
      ))
  )
))
