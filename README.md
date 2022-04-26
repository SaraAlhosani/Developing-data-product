# Developing-data-product

cvd <- read.csv2("CVD.csv")
#install.packages("shiny")
function(input, output) { 
  
  # Fill in the spot we created for a plot 
  output$deaths <- renderPlot({ 
    
    # Render a barplot 
    barplot(cvd[,input$Country],  
            main=input$Country, 
            ylab="Number of covids deaths per country", 
            xlab="Day") 
  })
}

