Getting and Cleaning Data - Course Project
==========================================

This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data" of Coursera

The dataset being used is: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## List of Files


`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.  The data sets, variables and brief logic is described in CodeBook.md uploaded to this repository.

The output is saved in the text file named  `averages_data.txt`, attached to the Coursera Project and also uploaded to this repository.

## Script Logic Flow

* Sets the working directory and reads all the data sets
   Sets the working appropriately and reads the all the training and test data sets.
* Merges the corresponding data sets
   Merges the training and test data sets 
* Reads the features data   
  Reads the features data set and extracts all features related to mean and std features using grep
* Extracts only mean and std columns from merged x-data set
  Extracts only the mean and std columns from the merged x-data set and names the columns appropriately
* Reads the activity labels data set and names the merged y-data set and subject data set
  Reads the activity labels data set and names the columns of the merged y-data set appropriately
* Merge (column bind) the data sets x_data, y_data and subject_data
  Uses cbind to merge the data sets x_data, y_data and subject_data column-wise (new columns added)
* Finally calculages the average and writes it to a text file  
  Computes the average for of each variable for each activity and each subject 
  Writes the averages into a text file 
  
