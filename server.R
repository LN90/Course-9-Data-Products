library(shiny)
library(leaflet)
shinyServer(function(input,output){
  output$text<-renderText(input$slider1)
  
  output$a1<-renderText(input$a)
  output$b1<-renderText(input$b)
  output$c1<-renderText(input$c)
  output$d1<-renderText(input$d)
  library(ggplot2)
  x=seq(0,3.7*pi,0.001)
  
  output$plot1<-renderPlot({
    mi<-sin(x)
    ma<-input$a+input$b*sin(input$c*(x-input$d))
        plot(x,y=input$a+input$b*sin(input$c*(x-input$d)),xlab="x - value initial form 0-4 pi",
             ylab="y - value",main="The sinus function",col="blue",ylim=c(-10,10))
    lines(x,sin(x),col="red")
    legend("bottomleft",c("Your sinus","Original sinus"),col=c("blue","red"),lty = c(1,1), 
           lwd=c(2.5,2.5))
    })
  
  output$newyork<-renderLeaflet({
    leaflet() %>%
      addTiles() %>%
      addMarkers(lat=40.748817,lng=-73.985428)
  })
  
  output$losangeles<-renderLeaflet({
    leaflet() %>%
      addTiles() %>%
      addMarkers(lat=34.052235,lng=-118.243683)
  })
  
  output$kansas<-renderLeaflet({
    leaflet() %>%
      addTiles() %>%
      addMarkers(lat=37.697948,lng=-97.314835)
  })
    
  

 

  
  
})