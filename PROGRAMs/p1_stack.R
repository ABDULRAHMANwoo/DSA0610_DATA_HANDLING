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
# Reshape the data for the stacked bar chart
data_long <- tidyr::gather(data, key = "Food_Type", value = "Value", -Age)

# Create the stacked bar chart
ggplot(data_long, aes(x = Age, y = Value, fill = Food_Type)) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Chart", x = "Age Group", y = "Percentage") +
  theme_minimal()
