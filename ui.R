library(shiny)

library(xlsx)
storedata = read.xlsx("store_data.xlsx",1)

shinyUI(pageWithSidebar(
  headerPanel('Using K-means clustering on Customer Data of a Supermarket'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(storedata)),
    selectInput('ycol', 'Y Variable', names(storedata)),
    numericInput('clusters', 'Cluster count', 1,
                 min = 1, max = 9), 
    helpText("Imagine you are the marketing manager, and you have been asked to run marketing campaigns on specific subsets of customers")
  ),
  mainPanel(
    tabsetPanel(type="tabs",
      tabPanel("Data table",tableOutput('table1')),
      tabPanel("Plot",plotOutput('plot1')))
    
  )
))
