library(shiny)
# Calcuation of the BMI which is weight (in kg) divided by square of height (in m)
bmiCalculation <- function(weight, height) weight/(height/100)^2
shinyServer(
  function(input, output) {
    # render the input values
    output$weightValue <- renderPrint({input$weight})
    output$heightValue <- renderPrint({input$height})
    # render the output value
    output$BMI <- renderPrint({bmiCalculation(input$weight, input$height)})
  }
)