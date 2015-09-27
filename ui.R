library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("SIMPLE MILES PER GALLON (MPG) PREDICTOR"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      h4("Histogram of all the MPG data that exists in the 'mtcars' dataset, 
         x: Miles/(US) gallon"),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      
      tags$hr(),
      tags$hr(),
      tags$hr(),
      h4("Please Select:"),
      tags$hr(),
      
      radioButtons("cyl", label = ("Number of cylinders:"),
                   choices = list(4.0, 6.0, 8.0), selected = 4.0),
      
      tags$hr(),
      
      sliderInput("hp", "Gross horsepower:",
                   min = 52,
                  max = 335,
                  value  = 100),
      
      tags$hr(),
      
      sliderInput("wt", "Weight (lb/1000):",
                  min = 1.513,
                  max = 5.424,
                  value  = 2.000),
      
      tags$hr(),
      
      radioButtons("am", label = ("Transmission:"),
                   choices = list ("Automatic" = "0", "Manual" = "1"), selected = "0")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
        
      h4("You Entered:"),
      tags$hr(),
      h4("Cylinders"),
      verbatimTextOutput("cyl1"),
      h4("Gross Horsepower"),
      verbatimTextOutput("hp1"),
      h4("Weight(lb/1000)"),
      verbatimTextOutput("wt1"),
      h4("Transmission"),
      verbatimTextOutput("am1"),
      
        tags$hr(),
        h4("According to your selections the predicted MPG is: "),
      
        verbatimTextOutput("mpgId")
      
    )
    
  )
))
