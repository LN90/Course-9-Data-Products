library(shiny)
shinyUI(fluidPage(
  titlePanel("First assignment Course 9 Data Products"),
  sidebarLayout(
    sidebarPanel(
      p("by Ellen Oosting"),
      p("Date: 24-01-2017"),
      p("Rated as:"),
      textOutput("text")
      ),
    mainPanel()
  ),
  mainPanel(
    h3("Welcome on this page"),
    p("What is your first impression?"),
    sliderInput("slider1","Scale from 1-10",1,10,8),
    p("Let's create a wave"),
    sliderInput("a","What is the shift horizontal of the wave?",min=0,max=5,step=0.5,value=0),
    sliderInput("b","What is the amplitude of the wave?",min=0,max=5,step=0.5,value=1),
    sliderInput("c","What is the period of the wave?",min=0,max=10,step=0.5,value=1),
    sliderInput("d","What is the startpoint of the wave?",min=0,max=10,step=0.5,value=0),
    h3("Your wave:"),
    p("Graph of the points"),
    plotOutput("plot1"),
    h2("My map"),
    tabsetPanel(type = "tabs",
                tabPanel("Los Angeles", br(), leafletOutput("losangeles")),
                tabPanel("New York", br(), leafletOutput("newyork")),
                tabPanel("Kansas", br(), leafletOutput("kansas"))
                )

  )
    
  
))