
library(ggplot2)

# Given product inventory data
product_data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Pie Plot
pie_plot <- ggplot(product_data, aes(x = "", y = QuantityAvailable, fill = ProductName)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  labs(title = "Product Inventory - Pie Plot")
print(pie_plot)
