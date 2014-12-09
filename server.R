library(shiny)
library(randomForest)
shinyServer(
    function(input, output) {
        res <- reactive({mc <- randomForest(mpg ~ ., data = mtcars, importance=TRUE); 
                         predict(mc, data.frame(
                             cyl=as.numeric(input$cyl),
                             wt=as.numeric(input$wt), 
                             disp=as.numeric(input$disp),
                             hp=as.numeric(input$hp),
                             drat=as.numeric(input$drat),
                             qsec=as.numeric(input$qsec),
                             vs=as.numeric(input$vs),
                             am=as.numeric(input$am),
                             gear=as.numeric(input$gear),
                             carb=as.numeric(input$carb)))})
        output$result <- renderText({res() })
    }
)