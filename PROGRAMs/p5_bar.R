library(ggplot2)
library(dplyr)

# Create a data frame with the provided data
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)
# Data manipulation
data$Click_through_Rate <- as.numeric(sub("%", "", data$Click_through_Rate)) / 100

# Bar Plot
ggplot(data, aes(x = Date, y = Page_Views)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Bar Plot", y = "Page Views")