library(shiny)
library(shinythemes)
library(countup)

options(shiny.maxRequestSize = 30 * 1024^2)

server <- function(input, output, session) {

}

ui <- fluidPage(
  theme = shinytheme("cosmo"),

  mainPanel(
    width = 12,
    fluidRow(
      column(
        width = 9,
        HTML("<h1>Welcome to the <strong><code>iSEE</code> COVID Hub!</strong></h1>")
      ),
      column(
        width = 2,
        tags$a(
          tags$img(src = "iSEE.png", alt = "powered by iSEE", align = "center", height = 50),
          href = "https://www.bioconductor.org/packages/iSEE"
        ),
        p("Powered by iSEE")
      )
    ),
    fluidRow(
      column(
        width = 12,
        offset = 0,
        h2("Start exploring the data with iSEE"),
        p("Click on any of the figures below to start an instance of iSEE with configured for that dataset."),
        fluidRow(
          column(
            width = 4,
            tags$a(
              tags$img(src = "ss_bcells.png", alt = "powered by iSEE", align = "center", width = "100%"),
              href = "http://shiny.imbei.uni-mainz.de:3838/iSEE_covidIT_Bcells"
            ),
            shiny::actionButton(
              inputId = "ab2", label = "Check out the B Cells dataset",
              icon = icon("database"),
              onclick = "window.open('http://shiny.imbei.uni-mainz.de:3838/iSEE_covidIT_Bcells', '_blank')"
            ),
            h4(
              "Containing",
              tags$strong(countup(7411, duration = 10), "cells")
            )
          ),
          column(
            width = 4,
            tags$a(
              tags$img(src = "ss_monocytes.png", alt = "powered by iSEE", align = "center", width = "100%"),
              href = "http://shiny.imbei.uni-mainz.de:3838/iSEE_covidIT_Monocytes"
            ),
            shiny::actionButton(
              inputId = "ab3", label = "Check out the Monocytes dataset",
              icon = icon("database"),
              onclick = "window.open('http://shiny.imbei.uni-mainz.de:3838/iSEE_covidIT_Monocytes', '_blank')"
            ),
            h4(
              "Containing",
              tags$strong(countup(10991, duration = 13), "cells")
            )
          ),
          column(
            width = 4,
            tags$a(
              tags$img(src = "ss_tcells.png", alt = "powered by iSEE", align = "center", width = "100%"),
              href = "http://shiny.imbei.uni-mainz.de:3838/iSEE_covidIT_Tcells"
            ),
            shiny::actionButton(
              inputId = "ab4", label = "Check out the T Cells dataset",
              icon = icon("database"),
              onclick = "window.open('http://shiny.imbei.uni-mainz.de:3838/iSEE_covidIT_Tcells', '_blank')"
            ),
            h4(
              "Containing",
              tags$strong(countup(36673, duration = 15), "cells")
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
            h4("Lorem"),
            p("ipsum"),
            br(), br(), br(), br(), br(), br(), br(), hr(),
            p("Some more info + disclaimer")
          )
        )
      )
    )
  )
)

shinyApp(ui = ui, server = server)
