library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("MPG prediction based on the car's charachteristics"),
    sidebarPanel(
        numericInput("cyl", "Number of cylinders", 4, min=1, max=32, step=1),
        numericInput("disp", "Displacement (cu.in.)", 70, min=1, step=0.1),
        numericInput("hp", "Gross horsepower", 100, min=10, step=1),
        numericInput("drat", "Rear axle ratio", 4, min=1, max=10, step=0.01),
        numericInput("wt", "Weight (lb/1000)", 3, min=1, max=10, step=0.001),
        numericInput("qsec", "1/4 mile time", 15, min=10, max=50, step=0.01),
        selectInput("vs", "V/S", choices = list("v-engine" = "0", "s-engine" = "1")),
        selectInput("am", "Gross horsepower", choices = list("automatic" = "0", "manual" = "1")),
        numericInput("gear", "Number of forward gears", 3, min=1, max = 10, step=1),
        numericInput("carb", "Number of carburetors", 2, min=1, max=10, step=1)
    ),
    mainPanel(
        h5("Please, input your car charachteristics in the panel in the left side of the screen. Default values and predicted mpg for them are provided. Please note, that predicted value is being changed every time you making changes to any of charachteristicts."),
        h5("Miles per gallon for given car:"),
        textOutput('result')
    )
))