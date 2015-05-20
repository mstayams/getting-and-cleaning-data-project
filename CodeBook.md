# Introduction
`
 The script run_analysis.R, uploaded to this Git repository,  performs the 5 steps (give below) required for Getting and Cleaning Data project
`

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


* All the input data sets are described in the README.md attached to this Git Repository

# Variables used in this script

* x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
* x_train and x_test data sets are combined (append) into one data set named x_data
* y_train and y_test data sets are combined (append) into one data set named y_data
* subject_train and subject_test data sets are combined (append) into one data set named subject_data
* features data set read into features variable
* mean_and_std_features variable contains all the mean and std features of features variable
* activity data set is read into activities variable
* all_data contains the combined data of x_data, y_data and subject_data column-wise (appended as new columns)
* averages_data contains mean for all the columns computed for different combinations of (subject, activity) columns of all_data
