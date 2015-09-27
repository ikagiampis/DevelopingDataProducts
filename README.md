# DevelopingDataProducts
Application Instruction:

1.	Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2.	Deploy the application on Rstudio's shiny server
3.	Share the application link by pasting it into the text box below
4.	Share your server.R and ui.R code on github
The application must include the following:


1.	Some form of input (widget: textbox, radio button, checkbox, ...)
2.	Some operation on the ui input in sever.R
3.	Some reactive output displayed as a result of server calculations
4.	You must also include enough documentation so that a novice user could use your application.
5.	The documentation should be at the Shiny website itself. Do not post to an external link.

Application Description:

This application is using data from the mtcars dataset: 
"The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)." 
More info: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

It is a simple MPG predictor. 
Initially it gives you a Histogram of all the MPG of the mtcars dataset. 
This is helping the user to have an idea of how many observations exists in the predictor. 
The more observations in this case the more different cars with MPGs info the better the predictor will be.

It is using four variables, 1) Number of cylinders (cyl), 2) Gross horsepower (hp), 3) Weight (lb/1000) (wt) 
and 4) Transmission (0 = automatic, 1 = manual) (am), to create a multiple linear regression model.
After that step, It is using this model to predict the MPG consumptions according to the input that the user is giving to the program.

The limits of number of cylinders, Gross horsepower, weight and transmission are dependent on the mtcars data set.

The multiple linear regression model with the 4 variables descript above it is not the best predictor. The R square is ~ 0.83.

