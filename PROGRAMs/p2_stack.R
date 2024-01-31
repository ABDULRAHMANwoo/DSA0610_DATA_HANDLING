
library(ggplot2)

# Given product inventory data
product_data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Stack Chart
stack_chart <- ggplot(product_data, aes(x = ProductName, y = QuantityAvailable, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Inventory - Stack Chart")




# Display the plots
print(stack_chart)
