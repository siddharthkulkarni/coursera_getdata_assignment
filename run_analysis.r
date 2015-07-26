#Siddharth P. Kulkarni Course Assignment
library(dplyr)
install.packages('dplyr')

setwd("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset")

activity_labels <- read.table('activity_labels.txt')

features <- read.table('features.txt')
features_info <- read.table('features_info.txt')

#load training
train <- read.table("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\train\\X_train.txt")
trainLabels <- read.table("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\train\\Y_train.txt")
subTrain <- read.table("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\train\\subject_train.txt")
setwd('train\\Inertial Signals\\')
body_acc_x_train <- read.table("body_acc_x_train.txt")
body_acc_y_train <- read.table("body_acc_y_train.txt")
body_acc_z_train <- read.table("body_acc_z_train.txt")

body_gyro_x_train <- read.table("body_gyro_x_train.txt")
body_gyro_y_train <- read.table("body_gyro_y_train.txt")
body_gyro_z_train <- read.table("body_gyro_z_train.txt")

total_acc_x_train <- read.table("total_acc_x_train.txt")
total_acc_y_train <- read.table("total_acc_y_train.txt")
total_acc_z_train <- read.table("total_acc_x_train.txt")


#load testing
                       
test <- read.table("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\test\\X_test.txt")
testLabels <- read.table("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\test\\Y_test.txt")
subTest <- read.table("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\test\\subject_test.txt")

setwd("M:\\Coursera\\Getting and Cleaning Data\\UCI HAR Dataset\\test\\Inertial Signals")   

body_acc_x_test <- read.table("body_acc_x_test.txt")
body_acc_y_test <- read.table("body_acc_y_test.txt")
body_acc_z_test <- read.table("body_acc_z_test.txt")

body_gyro_x_test <- read.table("body_gyro_x_test.txt")
body_gyro_y_test <- read.table("body_gyro_y_test.txt")
body_gyro_z_test <- read.table("body_gyro_z_test.txt")

total_acc_x_test <- read.table("total_acc_x_test.txt")
total_acc_y_test <- read.table("total_acc_y_test.txt")
total_acc_z_test <- read.table("total_acc_x_test.txt")
                          
#add the variable names to the variables in train / test
varnames <- unlist(features[,2])

#merge train and test
subTest <- select(subTest, subject = V1)
subTrain <- select(subTrain, subject = V1)

names(test) <- varnames
names(train) <- varnames

test <- cbind(subTest, test)
train <- cbind(subTrain, train)

test$type = 'test'
train$type = 'train'

merged <- rbind(test, train)

z <- merged[ ,grep("mean", names(merged))]
y <- merged[ ,grep('std', names(merged))]

merged <- cbind(z,y)



