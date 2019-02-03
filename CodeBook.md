# Getting and Cleaning Data Course Project 

## Results

The results of this project are two tidy dataframes (smartlab_subset, means_subject_activity) that contains the data extracted from  Human Activity Recognition Using Smartphones Dataset Version 1.0 (www.smartlab.ws)

### smartlab_subset dataframe
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

#### The measurment columns 


This dataframe contains direct and derived data from the accelerometer and gyroscope 3-axial raw signals. 

Direct measurements:
(t_body_acc_xyz, t_gravity_acc_xyz, t_body_gyro_xyz) 
Jerk signals:
(t_body_acc_jerk_xyz and t_body_gyro_jerk_xyz). 
The magnitude using the Euclidean norm:
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
The Fast Fourier Transform (FFT) of the signals: 
(f_body_acc_xyz, f_body_acc_jerk_xyz, f_body_gyro_xyz, f_body_body_acc_jerk_mag, f_body_body_gyro_mag, f_body_body_gyro_jerk_mag). 

The set of variables that were extracted from the original files are: 

_mean: Mean value
_std: Standard deviation

The complete list of columns is:




### means_subject_activity
A tidy dataframe containing the mean for each activity and subject of all the measurments extracted in df dataframe



