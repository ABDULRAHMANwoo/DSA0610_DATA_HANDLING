
library(ggplot2)

# Given product inventory data
product_data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)
# Scatter Plot
scatter_plot <- ggplot(product_data, aes(x = ProductID, y = QuantityAvailable)) +
  geom_point() +
  labs(title = "Product Inventory - Scatter Plot")
print(scatter_plot)
