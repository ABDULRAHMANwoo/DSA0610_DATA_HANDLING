library(ggplot2)
library(vcd)
# Create a data frame with the provided data
data <- data.frame(
  Age = c("0-10", "11-30", "31-50", "51-80"),
  Dairy = c(50, 35, 25, 40),
  Staple_Food = c(30, 45, 55, 40),
  High_Calorie_Food = c(10, 15, 13, 4),
  Supplements = c(10, 5, 7, 16)
)



# Reshape the data for the mosaic plot
data_mosaic <- table(data_long_hist$Age, data_long_hist$Food_Type)

# Create the mosaic plot
mosaic(data_mosaic, main = "Mosaic Plot", shade = TRUE)