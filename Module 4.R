# Load necessary libraries
library(ggplot2)

# Create the dataset
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)  # bad = 1, good = 0
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)  # low = 0, high = 1
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)  # low = 0, high = 1

# Create a data frame
data <- data.frame(Frequency, BP, First, Second, FinalDecision)

# Side-by-side boxplot for BP by First assessment
ggplot(data, aes(x = as.factor(First), y = BP, fill = as.factor(First))) +
  geom_boxplot() +
  labs(title = "Blood Pressure by First MD Assessment", x = "First Assessment (0 = Good, 1 = Bad)", y = "Blood Pressure") +
  theme_minimal() +
  scale_fill_manual(values = c("#0073C2", "#EFC000"))

# Histogram of Blood Pressure
hist(data$BP, 
     main = "Histogram of Blood Pressure", 
     xlab = "Blood Pressure", 
     col = "skyblue", 
     border = "black", 
     breaks = 5)
