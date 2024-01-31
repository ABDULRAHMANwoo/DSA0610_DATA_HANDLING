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
# Create the line plot
ggplot(data_long, aes(x = Age, y = Value, color = Food_Type, group = Food_Type)) +
  geom_line() +
  labs(title = "Line Plot", x = "Age Group", y = "Value") +
  theme_minimal()