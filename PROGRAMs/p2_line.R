
library(ggplot2)

# Given product inventory data
product_data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Line Plot
line_plot <- ggplot(product_data, aes(x = ProductID, y = QuantityAvailable, group = 1)) +
  geom_line() +
  labs(title = "Product Inventory - Line Plot")
print(line_plot)
