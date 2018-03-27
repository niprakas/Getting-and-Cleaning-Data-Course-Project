# Course-Project-Getting-and-Cleaning-Data
One of the most exciting areas in all of data science right now is wearable computing, for example Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

The data linked to the course represent the data collected from the accelerometer and gyroscope from the wearable smartphone (Samsung Galaxy S II) on the waist. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data used for the project are:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following files:

  > README.md, this file, which provides an overview of the data set and how it was created.
  
  > tidyData.txt, which contains the data set.
  
  > CodeBook.md, the code book, which describes the contents of the data set.
  
  > run_analysis.R, the script that used to create the data set


## The R script, run_analysis.R, does the following:

  > Download the dataset if it does not already exist.
  
  > Read\Load the activity and feature.
  
  > Only extract data on standard deviation and mean and Loads both the training and test datasets.
  
  > Loads the activity and subject data for each dataset, and merges them into finalData.
  
  > Creates a new independent tidy data set(tidyData.txt) with the average of each variable for each activity and each subject


The tidyData.txt is present in repository and This script requires the reshape2 package.
