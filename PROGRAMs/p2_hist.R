
library(ggplot2)

# Given product inventory data
product_data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)
# Histogram
histogram <- ggplot(product_data, aes(x = QuantityAvailable)) +
  geom_histogram(binwidth = 50, fill = "blue", color = "white") +
  labs(title = "Product Inventory - Histogram")
print(histogram)
