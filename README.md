# Getting and Cleaning Data

## Course Project

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps to run the script

1. Download the data source and extract it on your local drive. Note that a folder ```UCI HAR Dataset``` will be created.
2. The script ```run_analysis.R``` should be placed in the parent folder of ```UCI HAR Dataset```
3. Set the parent folder of ```UCI HAR Dataset``` as your working directory using ```setwd()``` function.
3. Run ```source("run_analysis.R")```, then it will generate a new file ```tiny_data.txt``` in your working directory.

## Dependencies

 ```data.table``` - powerful library for fast aggregation of large data. You can install the package by executing install.packages("data.table")
 