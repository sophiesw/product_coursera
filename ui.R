shinyUI(
  pageWithSidebar(
    # Application title
    titlePanel("Diamond price prediction"),
    sidebarPanel(
      p("This app will give you a predicted price of diamond when you fill in the amount of carats below."),
      p("After entering the amount, press the submit button and the predicted price will be shown on the left side."),
      
      br(),
      
      numericInput('carat', 'Enter diamond carats here', value =0.1),
      submitButton('Submit')
    ),
    mainPanel(
      br(),
      br(),
      br(),
      h4('Result of price prediction'),
      h5('Entered carats'),
      verbatimTextOutput("inputValue"),
      h5('Predicted price (Singapore dollar)'),
      verbatimTextOutput("prediction")
    )
  )
)