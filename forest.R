# Example: Random Forest for regression
library(randomForest)
data("mtcars")
model <- randomForest(mpg ~ hp + wt, data = mtcars)
print(model)
