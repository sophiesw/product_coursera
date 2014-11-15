library(shiny)
library(UsingR)

data(diamond)
fit <- lm(price ~ carat, data = diamond)
r <- coef(fit)

price <- function(carat){as.numeric(r[1] + r[2] * carat)}
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$carat})
    output$prediction <- renderPrint({price(input$carat)})
  }
)
