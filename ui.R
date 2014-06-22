library(shiny)
shinyUI(
pageWithSidebar(
  headerPanel("Motor Trend Car Road Tests"),
  sidebarPanel(
    h3("Enter the data"),
	radioButtons("cyl", "Number of cylinders:",
             c("4" = "4",
               "6" = "6",
               "8" = "8")),
			   
	numericInput('horse', 'Horse Power input: ', 140, min = 70, max = 250, step = 10)			   
	),
  mainPanel(
    h4("Miles/(US) gallon"),
	verbatimTextOutput("mpgId")
	)
))