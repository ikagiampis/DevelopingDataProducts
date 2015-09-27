library(shiny)
data(mtcars)
library(stats)


prediction_fuction <- function(x1,x2,x3, x4){
  
  fit1 <- lm(mpg ~ cyl + hp + wt + am , data=mtcars)
  
  prediction <- predict(fit1, list(cyl = x1, hp = x2, wt = x3, am = x4))
  
  return (prediction)
}


shinyServer(function(input, output) {
  
  
  output$cyl1 <- renderPrint(as.numeric(input$cyl))
  output$hp1 <- renderPrint(input$hp)
  output$wt1 <- renderPrint(input$wt)
  output$am1 <- renderPrint(as.numeric(input$am))
  
  output$mpgId <- renderPrint(prediction_fuction(as.numeric(input$cyl), input$hp,input$wt, as.numeric(input$am)))
  
  output$distPlot <- renderPlot({
    
    x <- mtcars$mpg
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
  
})

