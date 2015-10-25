# CodeBook

This is a code book that describes the variables, the data, and the transformation steps to clean up the data and prepare the independent tidy data set.

## The data source and description

* Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Detailed data source description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Data files 

The compressed data source file includes the following files:

- 'README.txt'

- 'activity_labels.txt': Links the class labels with their activity name.

- 'features.txt': List of all features.

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.


The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.


## Transformation steps

Following data transformations are carried out by the `run_analysis.R` script:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set. 
4. Appropriately label the data set with descriptive activity names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.


## Variable description

Variable name    | Description
-----------------|------------
Subject_ID       | ID of the participant who performed the activity. Range: 1 to 30.
Activity_ID      | ID of the activity. Range: 1 to 6.
Activity_Name    | Name of the activity. Levels: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS.


## Data columns with mean and std values

1. Subject_ID                     
2. Activity_Name                  
3. tBodyAcc-mean()-X              
4. tBodyAcc-mean()-Y              
5. tBodyAcc-mean()-Z              
6. tBodyAcc-std()-X               
7. tBodyAcc-std()-Y               
8. tBodyAcc-std()-Z               
9. tGravityAcc-mean()-X           
10. tGravityAcc-mean()-Y           
11. tGravityAcc-mean()-Z           
12. tGravityAcc-std()-X            
13. tGravityAcc-std()-Y            
14. tGravityAcc-std()-Z            
15. tBodyAccJerk-mean()-X          
16. tBodyAccJerk-mean()-Y          
17. tBodyAccJerk-mean()-Z          
18. tBodyAccJerk-std()-X           
19. tBodyAccJerk-std()-Y           
20. tBodyAccJerk-std()-Z           
21. tBodyGyro-mean()-X             
22. tBodyGyro-mean()-Y             
23. tBodyGyro-mean()-Z             
24. tBodyGyro-std()-X              
25. tBodyGyro-std()-Y              
26. tBodyGyro-std()-Z              
27. tBodyGyroJerk-mean()-X         
28. tBodyGyroJerk-mean()-Y         
29. tBodyGyroJerk-mean()-Z         
30. tBodyGyroJerk-std()-X          
31. tBodyGyroJerk-std()-Y          
32. tBodyGyroJerk-std()-Z          
33. tBodyAccMag-mean()             
34. tBodyAccMag-std()              
35. tGravityAccMag-mean()          
36. tGravityAccMag-std()           
37. tBodyAccJerkMag-mean()         
38. tBodyAccJerkMag-std()          
39. tBodyGyroMag-mean()            
40. tBodyGyroMag-std()             
41. tBodyGyroJerkMag-mean()        
42. tBodyGyroJerkMag-std()         
43. fBodyAcc-mean()-X              
44. fBodyAcc-mean()-Y              
45. fBodyAcc-mean()-Z              
46. fBodyAcc-std()-X               
47. fBodyAcc-std()-Y               
48. fBodyAcc-std()-Z               
49. fBodyAcc-meanFreq()-X          
50. fBodyAcc-meanFreq()-Y          
51. fBodyAcc-meanFreq()-Z          
52. fBodyAccJerk-mean()-X          
53. fBodyAccJerk-mean()-Y          
54. fBodyAccJerk-mean()-Z          
55. fBodyAccJerk-std()-X           
56. fBodyAccJerk-std()-Y           
57. fBodyAccJerk-std()-Z           
58. fBodyAccJerk-meanFreq()-X      
59. fBodyAccJerk-meanFreq()-Y      
60. fBodyAccJerk-meanFreq()-Z      
61. fBodyGyro-mean()-X             
62. fBodyGyro-mean()-Y             
63. fBodyGyro-mean()-Z             
64. fBodyGyro-std()-X              
65. fBodyGyro-std()-Y              
66. fBodyGyro-std()-Z              
67. fBodyGyro-meanFreq()-X         
68. fBodyGyro-meanFreq()-Y         
69. fBodyGyro-meanFreq()-Z         
70. fBodyAccMag-mean()             
71. fBodyAccMag-std()              
72. fBodyAccMag-meanFreq()         
73. fBodyBodyAccJerkMag-mean()     
74. fBodyBodyAccJerkMag-std()      
75. fBodyBodyAccJerkMag-meanFreq() 
76. fBodyBodyGyroMag-mean()        
77. fBodyBodyGyroMag-std()         
78. fBodyBodyGyroMag-meanFreq()    
79. fBodyBodyGyroJerkMag-mean()    
80. fBodyBodyGyroJerkMag-std()     
81. fBodyBodyGyroJerkMag-meanFreq()
