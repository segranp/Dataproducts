library(shiny)

shinyUI(
        navbarPage("Data Products Shiny App",
                   tabPanel("Analysis",
                            fluidPage(
                                    titlePanel("Variables impacting Miles per Gallon (MPG) in mtcars dataset"),
                                    sidebarLayout(
                                            sidebarPanel(
                                                    selectInput("variable", "Variable:",
                                                                c("Number of cylinders" = "cyl",
                                                                  "Displacement (cu.in.)" = "disp",
                                                                  "Gross horsepower" = "hp",
                                                                  "Rear axle ratio" = "drat",
                                                                  "Weight (lb/1000)" = "wt",
                                                                  "1/4 mile time" = "qsec",
                                                                  "V/S" = "vs",
                                                                  "Transmission" = "am",
                                                                  "Number of forward gears" = "gear",
                                                                  "Number of carburetors" = "carb"
                                                                )),
                                                    
                                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                            ),
                                            
                                            mainPanel(
                                                    h3(textOutput("caption")),
                                                    
                                                    tabsetPanel(type = "tabs", 
                                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                                tabPanel("Regression model", 
                                                                         plotOutput("mpgPlot"),
                                                                         verbatimTextOutput("fit")
                                                                )
                                                    )
                                            )
                                    )
                            )
                   ),
                   tabPanel("mtcars Datset details",
                            
                            hr(), 
                            h3("Brief Description"),
                            h5("The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)."),
                            
                            h3("Key Questions"),
                            h5("1. Is an automatic or manual transmission better for MPG"),
                        h5("2. Quantify the MPG difference between automatic and manual transmissions"),

                            h3("Dataset more details"),
                            p("A data frame with 32 observations on 11 variables."),
a("https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html")
                            
                   ),
                   
                   tabPanel("Github Link",
                            a("https://github.com/segranp/Dataproducts/")
                            
                   )
        )
)