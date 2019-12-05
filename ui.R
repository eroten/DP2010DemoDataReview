fluidPage(
  tags$h3("Review of U.S. Census Bureau's 2010 Demonstration Data Products: Population by Demographic Characteristics, California Counties, Cities, and Places"),
  p(
    "U.S. Census Bureau data downloaded November 8, 2019 from ",
    tags$a(
      href = "https://www.nhgis.org/differentially-private-2010-census-data",
      "IPUMS NHGIS, University of Minnesota."
    ),
    "",
    tags$a(
      href = "",
      ""
    )
  ),
  
  hr(),
  
  sidebarLayout(
    sidebarPanel(
      
      selectizeInput(
        inputId = "Area", label = "County, city, or census designated place (CDP)",
        choices = geo_names[, ],
        options = list(
          placeholder = "Type in a county, city, or place to see graphs",
          multiple = TRUE,
          maxOptions = 5000,
          onInitialize = I('function() { this.setValue(""); }')
        )
      ),
      
      hr(),
      
      p(
        "This interface was made with ",
        tags$a(
          href = "https://shiny.rstudio.com/",
          "Shiny for R."
        ),
        tags$a(
          href = "https://github.com/edyhsgr/DP2010DemoDataReview",
          "Related GitHub repository."
        ),
        "November 2019."
      ),
      width = 3
    ),
    
    mainPanel(
      
      plotOutput("plots"),
      width = 3
    )
  )
)
