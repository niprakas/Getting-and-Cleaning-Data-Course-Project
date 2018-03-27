#----------------------------------------------------------------------------------------------
# Coursera Project - Getting and Cleaning Data
# Nikhil Prakash
#
# FILE
#   run_analysis.R
#
# OVERVIEW
#   Accelerometers data collected from the from the Samsung Galaxy S Phone 
#   below script will perform the cleaning of the data and Build a clean data set for further processing.
#
# This script will perform the following steps
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
#
#-------------------------------------------------------------------------------------------------

# Clean up workspace
rm(list=ls())

# Load library “reshape2” 

library(reshape2)

# Download and unzip the file.

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) 
{
  download.file(zipUrl, zipFile, mode = "wb")
}

dataExt <- "UCI HAR Dataset"
if (!file.exists(dataExt))
{
  unzip(zipFile)
}

# Read\Load features and activity labels
features <- read.table(file.path(dataExt, "features.txt"))
features[,2] <- as.character(features[,2])
activityTypes <- read.table(file.path(dataExt, "activity_labels.txt"))
activityTypes[,2] <- as.character(activityTypes[,2])

# Only extract data on standard deviation and mean.

#featuresReq <- grep(".*mean.*|.*std.*", features[,2])
#featuresReq.names <- features[featuresReq,2]
#featuresReq.names = gsub('-mean', 'Mean', featuresReq.names)
#featuresReq.names = gsub('-std', 'Std', featuresReq.names)
#featuresReq.names <- gsub('[-()]', '', featuresReq.names)


featuresReq <- grep(".*std.*|.*mean.*", features[,2])
featuresReq.names <- features[featuresReq,2]
featuresReq.names = gsub('-std', 'Std', featuresReq.names)
featuresReq.names = gsub('-mean', 'Mean', featuresReq.names)
featuresReq.names <- gsub('[-()]', '', featuresReq.names)


# Load training and test data sets.

trainSub <- read.table(file.path(dataExt, "train", "subject_train.txt"))
trainX <- read.table(file.path(dataExt, "train", "X_train.txt"))[featuresReq]
trainY <- read.table(file.path(dataExt, "train", "y_train.txt"))
testSub <- read.table(file.path(dataExt, "test", "subject_test.txt"))
testX <- read.table(file.path(dataExt, "test", "X_test.txt"))[featuresReq]
testY <- read.table(file.path(dataExt, "test", "y_test.txt"))


# Merges the training and the test sets to create one data set.

trainData = cbind(trainSub,trainY,trainX)
testData = cbind(testSub,testY,testX)

finalData = rbind(trainData,testData)
colnames(finalData) = c("subjectNo", "activityTypes", featuresReq.names) 

#create a factor for subject and activity type

finalData$subject <- as.factor(finalData$subject)
finalData$activity <- factor(finalData$activity, levels = activityTypes[,1], labels = activityTypes[,2])

# Now using reshape library, "melt" function used so that each row have a unique id-variable combination.
# and using "cast" function, the melted data reshape in to desired shape.

finalData.melt <- melt(finalData, id = c("subject", "activity"))
finalData.mean <- dcast(finalData.melt, subject + activity ~ variable, mean)


# Export the tidyData set 

write.table(finalData.mean, './tidyData.txt', row.names = FALSE, quote = FALSE, sep='\t')