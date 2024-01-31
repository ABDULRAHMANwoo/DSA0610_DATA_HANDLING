
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

# Stacked Bar Chart
ggplot(data, aes(x = Date, y = Page_Views, fill = factor(Click_through_Rate))) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Chart", y = "Page Views")

# Line Plot
ggplot(data, aes(x = Date, y = Page_Views)) +
  geom_line() +
  labs(title = "Line Plot", y = "Page Views")

# Scatter Plot
ggplot(data, aes(x = Date, y = Click_through_Rate)) +
  geom_point() +
  labs(title = "Scatter Plot", y = "Click-through Rate")

# Pie Plot
ggplot(data, aes(x = "", y = Page_Views, fill = factor(Click_through_Rate))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Plot", x = NULL, y = NULL) +
  theme_void()

# Histogram
ggplot(data, aes(x = Page_Views)) +
  geom_histogram(binwidth = 200, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram", x = "Page Views", y = "Frequency")
