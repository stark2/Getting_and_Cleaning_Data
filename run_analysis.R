## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 

ls()

rm(list=ls())


require("data.table")

# load activity labels stored in the second column
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
# load data column names stored in the second column
features <- read.table("./UCI HAR Dataset/features.txt")[,2]
# search for mean and standard deviation for each measurement and create a logical vector with TRUE and FALSE values
extract_features <- grepl("mean|std", features)

# load X_test.txt file into data table object
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
# load y_test.txt file into data table object
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
# load subject_test.txt file into data table object
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# load X_train.txt file into data table object
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
# load y_train.txt file into data table object
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
# load subject_train.txt file into data table object
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")


# name the columns of the X_test dataset
names(X_test) <- features
# extract only the columns with mean and standard deviation measurements (returns 79 out of 561 columns)
X_test <- X_test[,extract_features]
# map and merge activity labels into y_test dataset
y_test[,2] <- activity_labels[y_test[,1]]
# name the columns of the y_test dataset
names(y_test) <- c("Activity_ID", "Activity_Name")
# name the column of the subject_test dataset
names(subject_test) <- "Subject_ID"
# merge data into one test_data dataset by column using cbind
test_data <- cbind(as.data.table(subject_test), y_test, X_test)


# name the column of the X_train dataset
names(X_train) <- features
# extract only the columns with mean and standard deviation measurements (returns 79 out of 561 columns)
X_train <- X_train[,extract_features]
# map and merge activity labels into y_train dataset
y_train[,2] <- activity_labels[y_train[,1]]

# name the columns of the y_train dataset
names(y_train) <- c("Activity_ID", "Activity_Name")
# name the column of the subject_train dataset
names(subject_train) <- "Subject_ID"
# merge data into one train_data dataset by column using cbind
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

# merge test and train data by row using rbind
data <- rbind(test_data, train_data)

# remove labels from data column names using setdiff to prepare for melting
id_labels <- c("Subject_ID", "Activity_ID", "Activity_Name")
data_labels <- setdiff(colnames(data), id_labels)

# melt data and create a tidy dataset with each variable in one row
melt_data <- melt(data, id = id_labels, measure.vars = data_labels)

# apply mean function to the tidy dataset using dcast function to aggregate
# and set the average for each variable, for each activity and each subject.
tidy_data <- dcast(melt_data, Subject_ID + Activity_Name ~ variable, mean)

# write tidy dataset to a file
write.table(tidy_data, file = "./tidy_data.txt", row.names = FALSE)

