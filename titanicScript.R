install.packages("tidyverse")
install.packages("readxl")
install.packages("knitr")
install.packages("caret")

library("tidyverse")
library("caret")
library("dplyr")

gender_submission <- read.csv("gender_submission.csv")
test <- read.csv("test.csv")
train <- read.csv("train.csv")

variaveis_gs <- c("idp","survived")
varaveis_teste <-c("idp", "classp", "name", "sex", "age", "sib", "parch", "ticket", "fare", "cabin", "embarked")
varaveis_train <-c("idp", "survived", "classp", "name", "sex", "age", "sib", "parch", "ticket", "fare", "cabin", "embarked")

names(gender_submission) <- variaveis_gs
names(test) <- varaveis_teste
names(train) <- varaveis_train

mean_age <- mean(train$age, na.rm = TRUE)
mean_test <- mean(test$age, na.rm = TRUE)
mean_fare <- mean(test$fare, na.rm = TRUE)

train$age[is.na(train$age)] <- mean_age
test$age[is.na(test$age)] <- mean_test
train$fare[is.na(train$fare)] <- mean_fare
test$fare[is.na(test$fare)] <- mean_fare

train$age <- round(train$age)
test$age <- round(test$age)

train$sex <- ifelse(train$sex == "male", 0, 1)
test$sex <- ifelse(test$sex == "male", 0, 1)






