# Getting and Cleaning Data Course Project 

## The run_analysis.R script

This script merges train and test data sets, extracts just mean and stardard deviation for each measurement, and makes a summary of the mean by activity and subject for each of the extracted measurements.

### Function ensamble_dataframe()

To achive that it defines a function ensamble_dataframe() that recives as input subject_path, x_path, y_path and clean_fields vector. And returns a tidy dataframe with just the mean and the standard deviation and descriptive names for the columns. And adds subject and activity columns.

### Procedure

The procedure consists on following steps:
- extract and clean column names from features.txt, removing innesesary characters and changing CamelCase for _lowercase
- use ensamble_dataframe() function to make train and test dataframes with extracted columns only (mean and std) and clean column names
- merge train and test dataframes into one tidy dataframe (df)
- asign descriptive label for activities in the df dataframe
- sumarize the mean by activity and subject for each of the extracted measurements in a tidy data frame (means_subject_activity) 


### Dataframes and Vectors created: 

#### dirty_columns
A dataframe containing the features measured, this was used to name columns by cleaning the names with grep and gsub ending with a clean_fields vector.

#### df_train 
A tidy dataframe containing the data from Human Activity Recognition Using Smartphones Dataset
Version 1.0 (www.smartlab.ws) train data set with just mean and std mesurements extracted and with subject and activity as columns

#### df_test 
A tidy dataframe containing the data from Human Activity Recognition Using Smartphones Dataset
Version 1.0 (www.smartlab.ws) test data set with just mean and std mesurements extracted and with subject and activity as columns

#### activity_labels
A dataframe containing apropiate labels for activities

#### df
A tidy dataframe containing both train and test data sets from Human Activity Recognition Using Smartphones Dataset
Version 1.0 (www.smartlab.ws) merged. Just mean and std mesurements were extracted and subject and activity columns were added. The activity column is a factor with the following levels and labels:

level | lebel
-- | -- 
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING




### means_subject_activity
A tidy dataframe containing the mean for each activity and subject of all the measurments extracted in df dataframe

### clean_fields
A vector containing clean names for the columns of the data from test and train data sets