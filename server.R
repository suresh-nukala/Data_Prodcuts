#setwd("C:/Users/307002645/SURESH/SPA/Data Science/Data_Science/4_Developing_Data_Products/PROJECT")

library(shiny)
library(ggplot2)
data1 <- read.csv("usa.sensex.csv", header = TRUE, sep = ",")
shinyServer(
  function(input, output){
    
    state_sel <- reactive({input$text1})
    flag <- reactive({input$id2})
    font_size <- reactive({input$x})
    data2 <- reactive({subset(data1, State == state_sel())})

      output$newHist <- renderPlot({
        
        old.par <- par(mfrow=c(2,2))
        p1 <- hist(data2()$Median.Age, main="Median Age", xlab = "Median Age", cex.axis = font_size())
        p2 <- hist(data2()$PerCapita.Income, main = "PerCapita Income", xlab = "Per Capita Income", cex.axis = font_size())
        p3 <- hist(data2()$Percent.in.Poverty, main = "Percent in Poverty", xlab = "Percent in Poverty", cex.axis = font_size())
        P4 <- hist(data2()$Crime.Index..Per.capita., main = "Crime Index", xlab = "Crime Index", cex.axis = font_size())
        par(old.par)
      })
      output$od1 <- renderPrint({if(length(grep("1",flag())) !=0) {summary(data2()$Median.Age)}})
      output$od2 <- renderPrint({if(length(grep("2",flag())) !=0) {summary(data2()$PerCapita.Income)}})
      output$od3 <- renderPrint({if(length(grep("3",flag())) !=0) {summary(data2()$Percent.in.Poverty)}})
      output$od4 <- renderPrint({if(length(grep("4",flag())) !=0) {summary(data2()$Median.Age)}})
    })  
