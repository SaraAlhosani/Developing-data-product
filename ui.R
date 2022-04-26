library(shiny)
cvd <- read.csv("CVD.csv")
# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("Covid deaths per country"), 
  
  # Generate a row with a sidebar 
  sidebarLayout(       
    
    
    # Define the sidebar with one input 
    sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="https://rpubs.com/Jadson-Correa/649259")), 
                 selectInput("Country", "Country:",  
                             choices=colnames(cvd[-1])), 
                 hr(), 
                 helpText("Covid deaths") 
    ), 
    
    # Create a spot for the barplot 
    mainPanel( 
      plotOutput("deaths")   
    ) 
    
  ) 
) 
