library(shiny)
shinyUI(
  pageWithSidebar(
    # Body Mass Index Calculator
    headerPanel("Body Mass Index Calculator"),
    sidebarPanel(
      p("Please select your weight and height: "),
      # capture the input with sliders
      sliderInput('weight', 'Weight (kg)', 60, min = 30, max = 180, step = 1),
      sliderInput('height', 'Height (cm)', 160, min = 120, max = 220, step = 1)
    ),
    mainPanel(
      h3('Your BMI Calculation'),
      h4('You entered'),
      "Weight (kg): ",
      verbatimTextOutput("weightValue"),
      "Height (cm): ",
      verbatimTextOutput("heightValue"),
      h4('Which results in a BMI of '),
      verbatimTextOutput("BMI")
    )
  )
)

