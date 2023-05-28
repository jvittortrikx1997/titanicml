install.packages("tidyverse")
install.packages("readxl")
install.packages("knitr")

library("tidyverse")

gender_submission <- read.csv("gender_submission.csv")
test <- read.csv("test.csv")
train <- read.csv("train.csv")

variaveis_gs <- c("idp","survived")
varaveis_teste <-c("idp", "classp", "name", "sex", "age", "sib", "parch", "ticket", "fare", "cabin", "embarked")
varaveis_train <-c("idp", "survived", "classp", "name", "sex", "age", "sib", "parch", "ticket", "fare", "cabin", "embarked")

names(gender_submission) <- variaveis_gs
names(test) <- varaveis_teste
names(train) <- varaveis_train

