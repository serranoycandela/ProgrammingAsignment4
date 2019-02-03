# Getting and Cleaning Data Course Project 

## Results

The results of this project are two tidy dataframes (smartlab_subset, means_subject_activity) that contains the data extracted from  Human Activity Recognition Using Smartphones Dataset Version 1.0 (www.smartlab.ws)

### smartlab_subset dataframe
A tidy dataframe containing both train and test data sets from Human Activity Recognition Using Smartphones Dataset
Version 1.0 (www.smartlab.ws) merged. Just mean and std mesurements were extracted and subject and activity columns were added. 



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

Coulmn name	|	Description
-- | --
t_body_acc_mean_x	|	Mean value of the body acceleration on the x axis 
t_body_acc_mean_y	|	Mean value of the body acceleration on the y axis 
t_body_acc_mean_z	|	Mean value of the body acceleration on the z axis 
t_body_acc_std_x	|	Standard deviation of the body acceleration on the x axis 
t_body_acc_std_y	|	Standard deviation of the body acceleration on the y axis 
t_body_acc_std_z	|	Standard deviation of the body acceleration on the z axis 
t_gravity_acc_mean_x	|	Mean value of the gravity acceleration on the x axis 
t_gravity_acc_mean_y	|	Mean value of the gravity acceleration on the y axis 
t_gravity_acc_mean_z	|	Mean value of the gravity acceleration on the z axis 
t_gravity_acc_std_x	|	Standard deviation of the gravity acceleration on the x axis 
t_gravity_acc_std_y	|	Standard deviation of the gravity acceleration on the y axis 
t_gravity_acc_std_z	|	Standard deviation of the gravity acceleration on the z axis 
t_body_acc_jerk_mean_x	|	Mean value of the Jerk signal for body acceleration on the x axis 
t_body_acc_jerk_mean_y	|	Mean value of the Jerk signal for body acceleration on the y axis 
t_body_acc_jerk_mean_z	|	Mean value of the Jerk signal for body acceleration on the z axis 
t_body_acc_jerk_std_x	|	Standard deviation of the Jerk signal for body acceleration on the x axis 
t_body_acc_jerk_std_y	|	Standard deviation of the Jerk signal for body acceleration on the y axis 
t_body_acc_jerk_std_z	|	Standard deviation of the Jerk signal for body acceleration on the z axis 
t_body_gyro_mean_x	|	Mean value of the body gyroscope on the x axis 
t_body_gyro_mean_y	|	Mean value of the body gyroscope on the y axis 
t_body_gyro_mean_z	|	Mean value of the body gyroscope on the z axis 
t_body_gyro_std_x	|	Standard deviation of the body gyroscope on the x axis 
t_body_gyro_std_y	|	Standard deviation of the body gyroscope on the y axis 
t_body_gyro_std_z	|	Standard deviation of the body gyroscope on the z axis 
t_body_gyro_jerk_mean_x	|	Mean value of the Jerk signal for body gyroscope on the x axis 
t_body_gyro_jerk_mean_y	|	Mean value of the Jerk signal for body gyroscope on the y axis 
t_body_gyro_jerk_mean_z	|	Mean value of the Jerk signal for body gyroscope on the z axis 
t_body_gyro_jerk_std_x	|	Standard deviation of the Jerk signal for body gyroscope on the x axis 
t_body_gyro_jerk_std_y	|	Standard deviation of the Jerk signal for body gyroscope on the y axis 
t_body_gyro_jerk_std_z	|	Standard deviation of the Jerk signal for body gyroscope on the z axis 
t_body_acc_mag_mean	|	Mean value of the total magnitud of body acceleration 
t_body_acc_mag_std	|	total magnitud of body acceleration 
t_gravity_acc_mag_mean	|	Mean value of the total magnitud of gravity acceleration 
t_gravity_acc_mag_std	|	total magnitud of gravity acceleration 
t_body_acc_jerk_mag_mean	|	Mean value of the total magnitud of Jerk signal for body acceleration 
t_body_acc_jerk_mag_std	|	total magnitud of Jerk signal for body acceleration 
t_body_gyro_mag_mean	|	Mean value of the total magnitud of body gyroscope 
t_body_gyro_mag_std	|	total magnitud of body gyroscope 
t_body_gyro_jerk_mag_mean	|	Mean value of the total magnitud of Jerk signal for body gyroscope 
t_body_gyro_jerk_mag_std	|	total magnitud of Jerk signal for body gyroscope 
f_body_acc_mean_x	|	Mean value of the frecuency domain value of the body acceleration on the x axis 
f_body_acc_mean_y	|	Mean value of the frecuency domain value of the body acceleration on the y axis 
f_body_acc_mean_z	|	Mean value of the frecuency domain value of the body acceleration on the z axis 
f_body_acc_std_x	|	Standard deviation of the frecuency domain value of the body acceleration on the x axis 
f_body_acc_std_y	|	Standard deviation of the frecuency domain value of the body acceleration on the y axis 
f_body_acc_std_z	|	Standard deviation of the frecuency domain value of the body acceleration on the z axis 
f_body_acc_jerk_mean_x	|	Mean value of the Jerk signal for frecuency domain value of the body acceleration on the x axis 
f_body_acc_jerk_mean_y	|	Mean value of the Jerk signal for frecuency domain value of the body acceleration on the y axis 
f_body_acc_jerk_mean_z	|	Mean value of the Jerk signal for frecuency domain value of the body acceleration on the z axis 
f_body_acc_jerk_std_x	|	Standard deviation of the Jerk signal for frecuency domain value of the body acceleration on the x axis 
f_body_acc_jerk_std_y	|	Standard deviation of the Jerk signal for frecuency domain value of the body acceleration on the y axis 
f_body_acc_jerk_std_z	|	Standard deviation of the Jerk signal for frecuency domain value of the body acceleration on the z axis 
f_body_gyro_mean_x	|	Mean value of the frecuency domain value of the body gyroscope on the x axis 
f_body_gyro_mean_y	|	Mean value of the frecuency domain value of the body gyroscope on the y axis 
f_body_gyro_mean_z	|	Mean value of the frecuency domain value of the body gyroscope on the z axis 
f_body_gyro_std_x	|	Standard deviation of the frecuency domain value of the body gyroscope on the x axis 
f_body_gyro_std_y	|	Standard deviation of the frecuency domain value of the body gyroscope on the y axis 
f_body_gyro_std_z	|	Standard deviation of the frecuency domain value of the body gyroscope on the z axis 
f_body_acc_mag_mean	|	Mean value of the total magnitud of frecuency domain value of the body acceleration 
f_body_acc_mag_std	|	total magnitud of frecuency domain value of the body acceleration 
f_body_body_acc_jerk_mag_mean	|	Mean value of the total magnitud of Jerk signal for frecuency domain value of the body acceleration 
f_body_body_acc_jerk_mag_std	|	total magnitud of Jerk signal for frecuency domain value of the body acceleration 
f_body_body_gyro_mag_mean	|	Mean value of the total magnitud of frecuency domain value of the body gyroscope 
f_body_body_gyro_mag_std	|	total magnitud of frecuency domain value of the body gyroscope 
f_body_body_gyro_jerk_mag_mean	|	Mean value of the total magnitud of Jerk signal for frecuency domain value of the body gyroscope 
f_body_body_gyro_jerk_mag_std	|	total magnitud of Jerk signal for frecuency domain value of the body gyroscope 
subject	|	Subject identification number from 1 to 30
activity	|	Activity factor (1:WALKING,2:WALKING_UPSTAIRS,3:WALKING_DOWNSTAIRS,4:SITTING,5:STANDING,6:LAYING)


### means_subject_activity

A tidy dataframe containing the mean for each activity and subject of all the measurments extracted in smartlab_subset dataframe. The columns are the same as in smartlab_subset and the diference is there is only 1 row for each subject and activity representing the mean of all records for each measurement with same subject and activity.




