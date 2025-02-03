# Load ggplot2 for visualization
library(ggplot2)
# Candidate names
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

# ABC political poll results
ABC_poll_results <- c(4, 62, 51, 21, 2, 14, 15)

# CBS political poll results
CBS_poll_results <- c(12, 75, 43, 19, 1, 21, 19)
# Create a data frame
poll_data <- data.frame(Name, ABC_poll_results, CBS_poll_results)

# Display the data frame
print(poll_data)
# Calculate average poll results
poll_data$Average <- rowMeans(poll_data[, c("ABC_poll_results", "CBS_poll_results")])

# Display the updated data frame
print(poll_data)
# Load ggplot2 for visualization
library(ggplot2)

# Create a bar plot
ggplot(poll_data, aes(x = reorder(Name, -Average), y = Average, fill = Name)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Poll Results by Candidate",
       x = "Candidate",
       y = "Average Poll Results") +
  theme_minimal()

