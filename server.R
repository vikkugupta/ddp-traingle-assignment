
library(shiny)

shinyServer(function(input, output) {
  
  output$out1 <- renderText(calculateArea(input$box1,input$box2))
  output$out2 <- renderText(calculatehypotenuse(input$box1,input$box2))
  
  calculateArea <- function (base, height)
  {
    result <- 0.5 * base * height
    return(round(result, digits = 2))
  }
  
  calculatehypotenuse <- function (base, height)
  {
    result <-  sqrt(base^2 + height^2)
    return(round(result, digits = 2))
  }
  
