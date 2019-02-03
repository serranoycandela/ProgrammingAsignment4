# Dataframes created


## dirty_columns
A dataframe containing the features measured, this was used to name columns by cleaning the names with grep and gsub

## df_train 
A tidy dataframe containing the data for train data set with just mean and std mesurements extracted and with subject and activity as columns

## df_test 
A tidy dataframe containing the data for test data set with just mean and std mesurements extracted and with subject and activity as columns

## activity_labels
A dataframe containing apropiate labels for activities

## df
A tidy dataframe containing both train and test data sets merged with just mean and std mesurements extracted and with subject and activity as columns. The activity column is a factor with levels and labels:

level lebel
1	WALKING
2	WALKING_UPSTAIRS
3	WALKING_DOWNSTAIRS
4	SITTING
5	STANDING
6	LAYING
