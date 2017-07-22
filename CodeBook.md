# Code Book for myData.csv

myData.csv is an aggregation of mean and standard devaition values from [this data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

A detailed summary of the methods used to generate the originl dataset can be found [here](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names)

## Data parameters

Original source data was downloaded 22July2017

This data set has a header, the hearder contains variable names 


### Variables
* tBodyAcc-mean()-X: body and acceleration signals, direction X, mean
* tBodyAcc-mean()-Y: body and acceleration signals, direction Y, mean	
* tBodyAcc-mean()-Z: body and acceleration signals, direction Z, mean	
* tBodyAcc-std()-X: body and acceleration signals, direction X, standard deviation	
* tBodyAcc-std()-Y: body and acceleration signals, direction Y, standard deviation	
* tBodyAcc-std()-Z: body and acceleration signals, direction Z, standard deviation	
* tGravityAcc-mean()-X: gravity acceleration signals, direction X, mean	
* tGravityAcc-mean()-Y: gravity acceleration signals, direction Y, mean	
* tGravityAcc-mean()-Z: gravity acceleration signals, direction Z, mean	
* tGravityAcc-std()-X: gravity acceleration signals, direction X, standard deviation	
* tGravityAcc-std()-Y: gravity acceleration signals, direction Y, standard deviation	
* tGravityAcc-std()-Z: gravity acceleration signals, direction Z, standard deviation	
* tBodyAccJerk-mean()-X: Jerk signals, direction X, mean	
* tBodyAccJerk-mean()-Y: Jerk signals, direction Y, mean	
* tBodyAccJerk-mean()-Z: Jerk signals, direction Z, mean	
* tBodyAccJerk-std()-X: Jerk signals, direction X, standard deviation	
* tBodyAccJerk-std()-Y: Jerk signals, direction Y, standard deviation	
* tBodyAccJerk-std()-Z: Jerk signals, direction Z, standard deviation	
* tBodyGyro-mean()-X: did not see this variable specifically defined in source documentation, appears to be related to body linear acceleration and angular velocity	
* tBodyGyro-mean()-Y: did not see this variable specifically defined in source documentation, appears to be related to body linear acceleration and angular velocity	
* tBodyGyro-mean()-Z: did not see this variable specifically defined in source documentation, appears to be related to body linear acceleration and angular velocity	
* tBodyGyro-std()-X: did not see this variable specifically defined in source documentation, appears to be related to body linear acceleration and angular velocity	
* tBodyGyro-std()-Y: did not see this variable specifically defined in source documentation, appears to be related to body linear acceleration and angular velocity	
* tBodyGyro-std()-Z: did not see this variable specifically defined in source documentation, appears to be related to body linear acceleration and angular velocity	
* tBodyGyroJerk-mean()-X: Jerk signals, direction X, mean	
* tBodyGyroJerk-mean()-Y: Jerk signals, direction Y, mean	
* tBodyGyroJerk-mean()-Z: Jerk signals, direction Z, mean	
* tBodyGyroJerk-std()-X: Jerk signals, direction X, standard deviation	
* tBodyGyroJerk-std()-Y: Jerk signals, direction Y, standard deviation	
* tBodyGyroJerk-std()-Z: Jerk signals, direction Z, standard deviation	
* tBodyAccMag-mean(): Euclidean norm magnitude of tBodyAcc, mean
* tBodyAccMag-std(): Euclidean norm magnitude of	tBodyAcc, standard deviation
* tGravityAccMag-mean(): Euclidean norm magnitude of tGravityAcc, mean
* tGravityAccMag-std(): Euclidean norm magnitude of tGravityAcc, standard deviation
* tBodyAccJerkMag-mean(): Euclidean norm magnitude of tBodyAccJerk, mean
* tBodyAccJerkMag-std(): Euclidean norm magnitude of	tBodyAccJerk, standard deviation
* tBodyGyroMag-mean(): Euclidean norm magnitude of	tBodyGyro, mean
* tBodyGyroMag-std(): Euclidean norm magnitude of tBodyGyro, standard deviation
* tBodyGyroJerkMag-mean(): magnitude of	tBodyGyroJerk, mean
* tBodyGyroJerkMag-std(): magnitude of tBodyGyroJerk, standard deviation	
* fBodyAcc-mean()-X: Fast Fourier Transform of body acceleration signal, direction X, mean
* fBodyAcc-mean()-Y: Fast Fourier Transform of body acceleration signal, direction Y, mean	
* fBodyAcc-mean()-Z: Fast Fourier Transform of body acceleration signal, direction Z, mean	
* fBodyAcc-std()-X: Fast Fourier Transform of body acceleration signal, direction X, standard deviation	
* fBodyAcc-std()-Y: Fast Fourier Transform of body acceleration signal, direction Y, standard deviation
* fBodyAcc-std()-Z: Fast Fourier Transform of body acceleration signal, direction Z, standard deviation	
* fBodyAccJerk-mean()-X: Fast Fourier Transform of jerk signals, direction X, mean	
* fBodyAccJerk-mean()-Y: Fast Fourier Transform of jerk signals, direction Y, mean	
* fBodyAccJerk-mean()-Z: Fast Fourier Transform of jerk signals, direction Z, mean	
* fBodyAccJerk-std()-X: Fast Fourier Transform of jerk signals, direction X, standard deviation	
* fBodyAccJerk-std()-Y: Fast Fourier Transform of jerk signals, direction Y, standard deviation	
* fBodyAccJerk-std()-Z: Fast Fourier Transform of jerk signals, direction Z, standard deviation	
* fBodyGyro-mean()-X: Fast Fourier Transform related to tBodyGyro-mean()-X
* fBodyGyro-mean()-Y: Fast Fourier Transform related to tBodyGyro-mean()-Y
* fBodyGyro-mean()-Z: Fast Fourier Transform related to tBodyGyro-mean()-Z
* fBodyGyro-std()-X: Fast Fourier Transform related to tBodyGyro-std()-X
* fBodyGyro-std()-Y: Fast Fourier Transform related to tBodyGyro-std()-Y
* fBodyGyro-std()-Z: Fast Fourier Transform related to tBodyGyro-std()-Z	
* fBodyAccMag-mean(): Euclidean norm magnitude of	fBodyAcc, mean
* fBodyAccMag-std(): Euclidean norm magnitude of fBodyAcc
* fBodyBodyAccJerkMag-mean(): Euclidean norm magnitude of	fBodyBodyAccJerk, mean
* fBodyBodyAccJerkMag-std(): Euclidean norm magnitude of fBodyBodyAccJerk, standard deviation
* fBodyBodyGyroMag-mean(): Euclidean norm magnitude of fBodyBodyGyro, mean
* fBodyBodyGyroMag-std(): Euclidean norm magnitude of	fBodyBodyGyro, standard deviation
* fBodyBodyGyroJerkMag-mean(): Euclidean norm magnitude of fBodyBodyGyroJerk, mean
* fBodyBodyGyroJerkMag-std(): Euclidean norm magnitude of	fBodyBodyGyroJerk, standard deviation
* activity: Activity being conducted at the time of measurement
* data_source: marker identifying whether the original source came from test or training data
