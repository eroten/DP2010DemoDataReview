## global variables and packages  

library(shiny)

Names <- read.table(file = "https://raw.githubusercontent.com/edyhsgr/DP2010DemoDataReview_CA/master/PlaceAndCountyNames_DP2010DemonstrationProducts_CA.csv",
                    header = FALSE, sep = ",")


# HousingData<-read.table(file="https://raw.githubusercontent.com/edyhsgr/DP2010DemoDataReview_CA/master/long_dp14_160_CA.csv",header=TRUE,sep=",")
PopData <- read.table(file = "https://raw.githubusercontent.com/edyhsgr/DP2010DemoDataReview_CA/master/long_dp1_050and160_CA.csv", 
                      header = TRUE, sep = ",")
