#cleaning environment
rm(list=ls())

#set filepath to desktop
filepath <- ("/Users/nicolebarden/Desktop")

#set working directory
setwd(filepath)

#load training and testing data into R
train_data <- read.csv(file="/Users/jackbonacci/Desktop/training.csv")
View(train_data)
test_data <- read.csv(file="/Users/jackbonacci/Desktop/testing.csv")
View(test_data)

#Count NA values
sapply(train_data, function(x) sum(is.na(x)))
sapply(test_data, function(x) sum(is.na(x)))

#Remove all columns containing at least one NA
train_data2 <- train_data[ , apply(train_data, 2, function(x) !any(is.na(x)))]
test_data2 <- test_data[ , apply(test_data, 2, function(x) !any(is.na(x)))]

#Count NA values again to check
sapply(train_data2, function(x) sum(is.na(x)))
sapply(test_data2, function(x) sum(is.na(x)))

#input NAs into all blank observations
train_data2[train_data2==""] <- NA
test_data2[test_data2==""] <- NA

#Remove all columns containing at least one NA 
train_data3<- train_data2[ , apply(train_data2, 2, function(x) !any(is.na(x)))]
test_data3<- test_data2[ , apply(test_data2, 2, function(x) !any(is.na(x)))]

#rename dataset 
train <- train_data3
test <- test_data3

#removing timestamps
train1<- train[c(1:2,6:60)]
test1<- test[c(1:2,6:60)]



