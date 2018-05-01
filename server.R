library(shiny)
library(datasets)

swissData <- swiss

shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste(input$variableY, "~", input$variable1, "+", input$variable2)
    })
    
    # Return the formula text for printing as a caption
    output$caption <- renderText({
        formulaText()
    })
    
    output$FertilityPlot <- renderPlot({
        plot(x = fitted(lm(as.formula(formulaText()), data = swissData)),
             y = resid(lm(as.formula(formulaText()),  data = swissData)),
             xlab = "Fitted Values",
             ylab = "Residuals")
    })
    output$FertilityPlot <- renderPlot({
        plot(x = fitted(lm(as.formula(formulaText()), data = swissData)),
             y = resid(lm(as.formula(formulaText()),  data = swissData)),
             xlab = "Fitted Values",
             ylab = "Residuals")
    })
    output$LinearModelSummary <- renderPrint({
        summary(lm(as.formula(formulaText()),  data = swissData))
    })
})