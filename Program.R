# Set seed for reproducibility
set.seed(123)

# Generate random data
n <- 100
x <- rnorm(n)
y <- rnorm(n)

# Perform calculations
mean_x <- mean(x)
mean_y <- mean(y)
sum_xy <- sum(x * y)
correlation <- cor(x, y)

# Print results
cat("Mean of x:", mean_x, "\n")
cat("Mean of y:", mean_y, "\n")
cat("Sum of xy:", sum_xy, "\n")
cat("Correlation:", correlation, "\n")

# Create a scatter plot
plot(x, y, main = "Scatter Plot", xlab = "X", ylab = "Y")

# Perform data transformation
transformed_x <- log(x + 1)
transformed_y <- sqrt(abs(y))

# Create histograms of transformed data
par(mfrow = c(1, 2))
hist(transformed_x, main = "Histogram of Transformed X", xlab = "Transformed X")
hist(transformed_y, main = "Histogram of Transformed Y", xlab = "Transformed Y")

# Perform statistical tests
t_test <- t.test(x, y)
wilcox_test <- wilcox.test(x, y)

# Print test results
cat("T-Test Result:\n")
print(t_test)
cat("\n")
cat("Wilcoxon Test Result:\n")
print(wilcox_test)