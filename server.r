library(shiny)

shinyServer(
  function(input, output) {
    
    output$plot <- renderPlot({
      numX <- max(1, min(11, as.numeric(input$varX)))
      numY <- max(1, min(11, as.numeric(input$varY)))
      
      # mtcars$am <- factor(mtcars$am)
      
      rowdesc <- c("Miles/(US) gallon",
              "Number of cylinders",
              "Displacement (cu.in.)",
              "Gross horsepower",
              "Rear axle ratio",
              "Weight (lb/1000)",
              "1/4 mile time" ,
              "V/S",
              "Transmission (0 = automatic, 1 = manual)",
              "Number of forward gears",
              "Number of carburetors")
              
              
      plot(mtcars[,numX], mtcars[,numY], main = "MtCars Output Graph", xlab = rowdesc[numX], ylab = rowdesc[numY])
      if (input$showfit) abline(lm(mtcars[,numY] ~ mtcars[,numX]), col = "red")
    })    
  }
)

