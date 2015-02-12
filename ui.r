library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Simple MtCars DataSet Graphical Explorer"),

  sidebarLayout(      
    # Sidebar with a slider input
    sidebarPanel(
        
        p("Choose which variables you want to see on the graph:"),

        selectInput(inputId = "varY", "Y Axis:",
            c("Miles/(US) gallon" = 1,
              "Number of cylinders" = 2,
              "Displacement (cu.in.)" = 3,
              "Gross horsepower" = 4,
              "Rear axle ratio" = 5,
              "Weight (lb/1000)" = 6,
              "1/4 mile time" = 7,
              "V/S" = 8,
              "Transmission (0 = automatic, 1 = manual)" = 9,
              "Number of forward gears" = 10,
              "Number of carburetors" = 11), selected = 1),

        selectInput(inputId = "varX", "X Axis:",
            c("Miles/(US) gallon" = 1,
              "Number of cylinders" = 2,
              "Displacement (cu.in.)" = 3,
              "Gross horsepower" = 4,
              "Rear axle ratio" = 5,
              "Weight (lb/1000)" = 6,
              "1/4 mile time" = 7,
              "V/S" = 8,
              "Transmission (0 = automatic, 1 = manual)" = 9,
              "Number of forward gears" = 10,
              "Number of carburetors" = 11), selected = 2),

        checkboxInput("showfit", "Check box to show simple regression line", TRUE),

        p("On the right side you see simple 2D graph on chosen variables of standard 'mtcars' dataset.")  

    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("plot")
    )
  )
))


