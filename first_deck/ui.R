
library(shiny)
shinyUI(pageWithSidebar(
  h3("USA SENSEX Data Year 1999"),
  sidebarPanel(
    selectInput(inputId ='text1', label = "state", choices = c("NO SELECTION", "ALABAMA" = 'AL', "ARKANSAS" = 'AR', "ARIZONA" = 'AZ', "CALIFORNIA" = 'CA', "COLARADO" = 'CO', "ILLINOIS" = 'IL')),
    checkboxGroupInput("id2", "Check Box - Summary Calculations", 
                     c("Median Age" = "1",
                       "Per Capita Income" = "2",
                       "Percent in Poverty" = "3",
                       "Crime Index" = "4"),
                     selected = c("","", "","")),
    sliderInput('x', 'Font Size', value = 4, min = 0.5, max = 1.5, step = 0.02,),
    submitButton('Submit')
  ),
       mainPanel(
      h4("This app helps in visualizing sensex data by STATE, required parameter in simple histogram with density plot. It also helps in getting selected data density in histogram and helps in getting summary of selected data set"),
         
       h4('Selected State sensex statistics'),
       plotOutput('newHist'),
       h4('Summary of Median Age'),
       verbatimTextOutput("od1"),
       h4('Summary of Per Capita Income'),
       verbatimTextOutput("od2"),
       h4('Summary of Percent in Poverty'),
       verbatimTextOutput("od3"),
       h4('Summary of Crime Index'),
       verbatimTextOutput("od4")
     )
)
)
