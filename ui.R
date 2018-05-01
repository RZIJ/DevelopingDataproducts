library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("My Linear Prediction Model"),
    
    # Sidebar with controls to select the variable to plot against mpg
    # and to specify whether outliers should be included
    sidebarPanel(
        helpText("Select one variable that you want to predict and select two other variables
                 which you want to use to predict the y variable"),
        
        selectInput("variableY", "Variable to be predicted:",
                    list("Fertility",
                         "Agriculture", 
                         "Examination", 
                         "Education",
                         "Catholic",
                         "Infant.Mortality")),
        selectInput("variable1", "Variable1:",
                    list("Fertility",
                         "Agriculture", 
                         "Examination", 
                         "Education",
                         "Catholic",
                         "Infant.Mortality")),
        selectInput("variable2", "Variable2:",
                    list("Fertility",
                         "Agriculture", 
                         "Examination", 
                         "Education",
                         "Catholic",
                         "Infant.Mortality"))
    ),
    
    # Show the caption and plot of the requested variable against mpg
    mainPanel(
        h3("Fitted Values vs Residuals"),
        helpText("Fitted Values are the values that your model predicted, the residuals
                 values display how far your prediction was from the real value"),
        plotOutput("FertilityPlot"),
        h3("Summary of your prediction model"),
        verbatimTextOutput("LinearModelSummary")
    )
))