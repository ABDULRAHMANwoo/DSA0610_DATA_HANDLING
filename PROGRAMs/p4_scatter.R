
library(ggplot2)

# Create a data frame with the provided data
data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

# Scatter Plot
ggplot(data, aes(x = Month, y = Sales)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "Month", y = "Sales ($)")