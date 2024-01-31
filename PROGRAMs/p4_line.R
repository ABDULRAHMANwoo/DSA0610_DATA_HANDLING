
library(ggplot2)

# Create a data frame with the provided data
data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)



# Line Graph
ggplot(data, aes(x = Month, y = Sales)) +
  geom_line() +
  labs(title = "Line Graph", x = "Month", y = "Sales ($)")
