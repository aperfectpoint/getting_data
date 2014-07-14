CodeBook
========

## Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The given measurements were reduced to 66 measurements that are measuring Mean or Standard Deviation.

## Variable Names

 Variable | Descritpion
| -------- |---------
| ActivityIndex | The index of the activity peformed.
| SubjectIndex | The index of the subject.
| TimeBodyAccelerationMeanX | Mean time for acceleration of body for X direction.
| TimeBodyAccelerationMeanY | Mean time for acceleration of body for Y direction.
| TimeBodyAccelerationMeanZ | Mean time for acceleration of body for Z direction.
| TimeBodyAccelerationStdX | Standard deviation of time for acceleration of body for X direction.
| TimeBodyAccelerationStdY | Standard deviation of time for acceleration of body for Y direction.
| TimeBodyAccelerationStdZ | Standard deviation of time for acceleration of body for Z direction.
| TimeGravityAccelerationMeanX | Mean time of acceleration of gravity for X direction.
| TimeGravityAccelerationMeanY | Mean time of acceleration of gravity for Y direction.
| TimeGravityAccelerationMeanZ | Mean time of acceleration of gravity for Z direction.
| TimeGravityAccelerationStdX | Standard deviation of time of acceleration of gravity for X direction.
| TimeGravityAccelerationStdY | Standard deviation of time of acceleration of gravity for Y direction.
| TimeGravityAccelerationStdZ | Standard deviation of time of acceleration of gravity for Z direction.
| TimeBodyAccelerationJerkMeanX | Mean time of body acceleration jerk for X direction.
| TimeBodyAccelerationJerkMeanY | Mean time of body acceleration jerk for Y direction
| TimeBodyAccelerationJerkMeanZ | Mean time of body acceleration jerk for Z direction
| TimeBodyAccelerationJerkStdX | Standard deviation of time of body acceleration jerk for X direction.
| TimeBodyAccelerationJerkStdY | Standard deviation of time of body acceleration jerk for Y direction.
| TimeBodyAccelerationJerkStdZ | Standard deviation of time of body acceleration jerk for Z direction.
| TimeBodyGyroMeanX | Mean body gyroscope measurement for X direction.
| TimeBodyGyroMeanY | Mean body gyroscope measurement for Y direction.
| TimeBodyGyroMeanZ | Mean body gyroscope measurement for Z direction.
| TimeBodyGyroStdX | Standard deviation of body gyroscope measurement for X direction.
| TimeBodyGyroStdY | Standard deviation of body gyroscope measurement for Y direction.
| TimeBodyGyroStdZ | Standard deviation of body gyroscope measurement for Z direction.
| TimeBodyGyroJerkMeanX | Mean jerk signal of body for X direction.
| TimeBodyGyroJerkMeanY | Mean jerk signal of body for Y direction.
| TimeBodyGyroJerkMeanZ | Mean jerk signal of body for Z direction.
| TimeBodyGyroJerkStdX | Standard deviation of jerk signal of body for X direction.
| TimeBodyGyroJerkStdY | Standard deviation of jerk signal of body for Y direction.
| TimeBodyGyroJerkStdZ | Standard deviation of jerk signal of body for Z direction.
| TimeBodyAccelerationMagnitudeMean | Mean magnitude of body Acc
| TimeBodyAccelerationMagnitudeStd | Standard deviation of magnitude of body Acc
| TimeGravityAccelerationMagnitudeMean | Mean gravity acceleration magnitude.
| TimeGravityAccelerationMagnitudeStd | Standard deviation of gravity acceleration magnitude.
| TimeBodyAccelerationJerkMagnitudeMean | Mean magnitude of body acceleration jerk.
| TimeBodyAccelerationJerkMagnitudeStd | Standard deviation of magnitude of body acceleration jerk.
| TimeBodyGyroMagnitudeMean | Mean magnitude of body gyroscope measurement.
| TimeBodyGyroMagnitudeStd | Standard deviation of magnitude of body gyroscope measurement.
| TimeBodyGyroJerkMagnitudeMean | Mean magnitude of body body gyroscope jerk measurement.
| TimeBodyGyroJerkMagnitudeStd | Standard deviation of magnitude of body body gyroscope jerk measurement.
| FrequencyBodyAccelerationMeanX | Mean frequency of body acceleration for X direction.
| FrequencyBodyAccelerationMeanY | Mean frequency of body acceleration for Y direction.
| FrequencyBodyAccelerationMeanZ | Mean frequency of body acceleration for Z direction.
| FrequencyBodyAccelerationStdX | Standard deviation of frequency of body acceleration for X direction.
| FrequencyBodyAccelerationStdY | Standard deviation of frequency of body acceleration for Y direction.
| FrequencyBodyAccelerationStdZ | Standard deviation of frequency of body acceleration for Z direction.
| FrequencyBodyAccelerationJerkMeanX | Mean frequency of body accerlation jerk for X direction.
| FrequencyBodyAccelerationJerkMeanY | Mean frequency of body accerlation jerk for Y direction.
| FrequencyBodyAccelerationJerkMeanZ | Mean frequency of body accerlation jerk for Z direction.
| FrequencyBodyAccelerationJerkStdX | Standard deviation frequency of body accerlation jerk for X direction.
| FrequencyBodyAccelerationJerkStdY | Standard deviation frequency of body accerlation jerk for Y direction.
| FrequencyBodyAccelerationJerkStdZ | Standard deviation frequency of body accerlation jerk for Z direction.
| FrequencyBodyGyroMeanX | Mean frequency of body gyroscope measurement for X direction.
| FrequencyBodyGyroMeanY | Mean frequency of body gyroscope measurement for Y direction.
| FrequencyBodyGyroMeanZ | Mean frequency of body gyroscope measurement for Z direction.
| FrequencyBodyGyroStdX | Standard deviation frequency of body gyroscope measurement for X direction.
| FrequencyBodyGyroStdY | Standard deviation frequency of body gyroscope measurement for Y direction.
| FrequencyBodyGyroStdZ | Standard deviation frequency of body gyroscope measurement for Z direction.
| FrequencyBodyAccelerationMagnitudeMean | Mean frequency of body acceleration magnitude.
| FrequencyBodyAccelerationMagnitudeStd | Standard deviation of frequency of body acceleration magnitude.
| FrequencyBodyBodyAccelerationJerkMagnitudeMean | Mean frequency of body acceleration jerk magnitude.
| FrequencyBodyBodyAccelerationJerkMagnitudeStd | Standard deviation of frequency of body acceleration jerk magnitude.
| FrequencyBodyBodyGyroMagnitudeMean | Mean frequency of magnitude of body gyroscope measurement.
| FrequencyBodyBodyGyroMagnitudeStd | Standard deviation of frequency of magnitude of body gyroscope measurement.
| FrequencyBodyBodyGyroJerkMagnitudeMean | Mean frequency of magnitude of body gyroscope jerk measurement.
| FrequencyBodyBodyGyroJerkMagnitudeStd | Standard deviation offrequency of magnitude of body gyroscope jerk measurement.
| ActivityLabel | The label of the preformed activity 
