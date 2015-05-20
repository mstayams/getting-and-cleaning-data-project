library(plyr)

# set the working directory 
setwd("c:/Coursera/R/DataCleaning")

# 1. Merges the training and the test sets to create one data set.
###############################################################################

# Read the training data sets
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

# Read the training subject dataset
subject_train <- read.table("train/subject_train.txt")

# Read the test data sets
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

# Read the training subject dataset
subject_test <- read.table("test/subject_test.txt")

# merge the corresponding training and test data sets

x_data <- rbind(x_train, x_test)

# merge the corresponding test data sets

y_data <- rbind(y_train, y_test)

# Merge the subject data sets into one
subject_data <- rbind(subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
###########################################################################################

features <- read.table("features.txt")

# get only columns with mean() or std() in their names using regular expression from features
# escaoe the special characters ( and ) using backslashes
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# extract only  desired mean and std columns of the merged data set
x_data <- x_data[, mean_and_std_features]

# name the columns appropriately
names(x_data) <- features[mean_and_std_features, 2]

# 3. Uses descriptive activity names to name the activities in the data set
###############################################################################

activities <- read.table("activity_labels.txt")

# update values with correct activity names
y_data[, 1] <- activities[y_data[, 1], 2]

# 4. Appropriately labels the data set with descriptive variable names. 
###############################################################################

names(y_data) <- "activity"
names(subject_data) <- "subject"

# merge the data sets x_data, y_data and subject_data column-wise 
all_data <- cbind(x_data, y_data, subject_data)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
###############################################################################

# find the mean for each subject and activity combination 
# there are 6 different activities and 30 different subjects
# so the the result data set will heve 6*30 = 180 rows (averages)

averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

# write it to the file
write.table(averages_data, "averages_data.txt", row.name=FALSE,eol = "\r\n")