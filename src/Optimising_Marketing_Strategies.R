library(rpart)
library(rpart.plot)
library(randomForest)
library(caret)

# Set working directory to file location
setwd("D:/JCU/Semester/2023 SP51 trisemester 2/MA3405 Statistical Data Mining for Big Data/CAPSTONE PROJECT")

# Read 'bank-additional-full.csv' file
Data <- read.csv('bank-additional-full.csv', header = TRUE, sep = ";")

# Explore the data
# Print summary of data set.
summary(Data)
# Observe structure of data set.
str(Data)

# Check for missing values.
missing_counts <- colSums(is.na(Data))
missing_counts
# No missing values in data set.

# Convert categorical variables to factors
categorical_cols <- c("job", "marital", "education", "default", "housing", "loan", "contact", "month", "day_of_week", "poutcome", "y")
Data[categorical_cols] <- lapply(Data[categorical_cols], as.factor)

# Split the data into training and testing sets (80% for training, 20% for testing)
set.seed(123)
train_index <- sample(nrow(Data), 0.8 * nrow(Data))
train_data <- Data[train_index, ]
test_data <- Data[-train_index, ]
dim(train_data)
dim(test_data)

# Decision Tree
tree_model <- rpart(y ~ ., data = train_data, method = "class")
tree_predictions <- predict(tree_model, newdata = test_data, type = "class")

# Display Decision Tree
rpart.plot(tree_model)

# Logistic Regression
logit_model <- glm(y ~ ., data = train_data, family = "binomial")
logit_predictions <- predict(logit_model, newdata = test_data, type = "response")
logit_predictions <- ifelse(logit_predictions > 0.5, "yes", "no")

# Convert predicted variable to factor with same levels as actual variable
logit_predictions <- factor(logit_predictions, levels = levels(test_data$y))


# Random Forest
rf_model <- randomForest(y ~ ., data = train_data)
rf_predictions <- predict(rf_model, newdata = test_data, type = "class")

# Variable Importance Plot for Random Forest
varImpPlot(rf_model)


# Evaluate the performance of the models
tree_confusion <- confusionMatrix(tree_predictions, test_data$y)
logit_confusion <- confusionMatrix(logit_predictions, test_data$y)
rf_confusion <- confusionMatrix(rf_predictions, test_data$y)

# Display Confusion Matrices
print(tree_confusion)
print(logit_confusion)
print(rf_confusion)

