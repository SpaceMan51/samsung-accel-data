---
title: "CodeBook.md"
author: "Johnny Vargas (GitHub: SpaceMan51)"
date: "Saturday, March 14, 2015"
output: html_document
---

A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data. 

Source Files:
----------------------------------------------------
Project data files:      
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Preparaton: 
-------------------------------------------------
Unzip Files into working directory

Extracted Files and Folders:
----------------------------------------------------

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features. Note: we are only concerned with mean() and std() for this exercise.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set. (set to be combined with test set)

- 'train/y_train.txt': Training labels (activity performed)

- 'test/X_test.txt': Test set. (set to be combined with train set)

- 'test/y_test.txt': Test labels (activity performed)

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
For more information about this dataset contact: activityrecognition@smartlab.ws

Processing:
-------------------------------------------------
Run run_analysis.R to convert the raw data into a neat and tidy dataset and create a new file with the average of each variable for each activity and each subject 

Transformation functions:
-------------------------------------------------
- rbind() : append rows of multiple data frames (combine tables by adding more rows)
- cbind() : append columns of multiple data frames (combine tables by adding more columns)
- subset() : create a subset of data from an existing data frame
- setnames() : rename columns in a dataframe
- ddply() : split a data frame, apply a function (mean in this exercise), then return results back in a single data frame

Variables:  (NOTE: variables beginning with 't' are time domain signals, variables beginning with an 'f' are frequency domain signals )
-------------------------------------------------
-        1	 : 	subject                         	 : 	subject performing activity
-	2	 : 	activity                       	 : 	activity name
-	3	 : 	tBodyAcc-mean()-X               	 : 	mean value of body acceleration signal along X axis
-	4	 : 	tBodyAcc-mean()-Y              	 : 	mean value of body acceleration signal along Y axis
-	5	 : 	tBodyAcc-mean()-Z               	 : 	mean value of body acceleration signal along Z axis
-	6	 : 	tBodyAcc-std()-X               	 : 	standard deviation of body acceleration signal along X axis
-	7	 : 	tBodyAcc-std()-Y                	 : 	standard deviation of body acceleration signal along Y axis
-	8	 : 	tBodyAcc-std()-Z               	 : 	standard deviation of body acceleration signal along Z axis
-	9	 : 	tGravityAcc-mean()-X            	 : 	mean value of gravity acceleration signal along X axis
-	10	 : 	tGravityAcc-mean()-Y           	 : 	mean value of gravity acceleration signal along Y axis
-	11	 : 	tGravityAcc-mean()-Z            	 : 	mean value of gravity acceleration signal along Z axis
-	12	 : 	tGravityAcc-std()-X            	 : 	standard deviation of gravity acceleration signal along X axis
-	13	 : 	tGravityAcc-std()-Y             	 : 	standard deviation of gravity acceleration signal along Y axis
-	14	 : 	tGravityAcc-std()-Z            	 : 	standard deviation of gravity acceleration signal along Z axis
-	15	 : 	tBodyAccJerk-mean()-X           	 : 	mean value of body linear acceleration Jerk signalalong X axis
-	16	 : 	tBodyAccJerk-mean()-Y          	 : 	mean value of body linear acceleration Jerk signalalong Y axis
-	17	 : 	tBodyAccJerk-mean()-Z           	 : 	mean value of body linear acceleration Jerk signalalong Z axis
-	18	 : 	tBodyAccJerk-std()-X           	 : 	standard deviation of body linear acceleration Jerk signalalong X axis
-	19	 : 	tBodyAccJerk-std()-Y            	 : 	standard deviation of body linear acceleration Jerk signalalong Y axis
-	20	 : 	tBodyAccJerk-std()-Z           	 : 	standard deviation of body linear acceleration Jerk signalalong Z axis
-	21	 : 	tBodyGyro-mean()-X              	 : 	mean value of body angular velocity signal along X axis
-	22	 : 	tBodyGyro-mean()-Y             	 : 	mean value of body angular velocity signal along Y axis
-	23	 : 	tBodyGyro-mean()-Z              	 : 	mean value of body angular velocity signal along Z axis
-	24	 : 	tBodyGyro-std()-X              	 : 	standard deviation of body angular velocity signal along X axis
-	25	 : 	tBodyGyro-std()-Y               	 : 	standard deviation of body angular velocity signal along Y axis
-	26	 : 	tBodyGyro-std()-Z              	 : 	standard deviation of body angular velocity signal along Z axis
-	27	 : 	tBodyGyroJerk-mean()-X          	 : 	mean value of angular velocity Jerk signal along X axis
-	28	 : 	tBodyGyroJerk-mean()-Y         	 : 	mean value of angular velocity Jerk signal along Y axis
-	29	 : 	tBodyGyroJerk-mean()-Z          	 : 	mean value of angular velocity Jerk signal along Z axis
-	30	 : 	tBodyGyroJerk-std()-X          	 : 	standard deviation of angular velocity Jerk signal along X axis
-	31	 : 	tBodyGyroJerk-std()-Y           	 : 	standard deviation of angular velocity Jerk signal along Y axis
-	32	 : 	tBodyGyroJerk-std()-Z          	 : 	standard deviation of angular velocity Jerk signal along Z axis
-	33	 : 	tBodyAccMag-mean()              	 : 	mean value of body acceleration magnitude
-	34	 : 	tBodyAccMag-std()              	 : 	standard deviation of body acceleration magnitude
-	35	 : 	tGravityAccMag-mean()           	 : 	mean value of gravity acceleration magnitude
-	36	 : 	tGravityAccMag-std()           	 : 	standard deviation of gravity acceleration magnitude
-	37	 : 	tBodyAccJerkMag-mean()          	 : 	mean value of body acceleration Jerk signal magnitude
-	38	 : 	tBodyAccJerkMag-std()          	 : 	standard deviation of body acceleration Jerk signal magnitude
-	39	 : 	tBodyGyroMag-mean()             	 : 	mean value of body angular velocity magnitude
-	40	 : 	tBodyGyroMag-std()             	 : 	standard deviation of body angular velocity magnitude
-	41	 : 	tBodyGyroJerkMag-mean()         	 : 	mean value of body angular velocity Jerk signal magnitude
-	42	 : 	tBodyGyroJerkMag-std()         	 : 	standard deviation of body angular velocity Jerk signal magnitude
-	43	 : 	fBodyAcc-mean()-X               	 : 	mean value of Fast Fourier Transform of body acceleration signal along X axis
-	44	 : 	fBodyAcc-mean()-Y              	 : 	mean value of Fast Fourier Transform of body acceleration signal along Y axis
-	45	 : 	fBodyAcc-mean()-Z               	 : 	mean value of Fast Fourier Transform of body acceleration signal along Z axis
-	46	 : 	fBodyAcc-std()-X               	 : 	standard deviation of Fast Fourier Transform of body acceleration signal 
-	47	 : 	fBodyAcc-std()-Y                	 : 	standard deviation of Fast Fourier Transform of body acceleration signal 
-	48	 : 	fBodyAcc-std()-Z               	 : 	standard deviation of Fast Fourier Transform of body acceleration signal 
-	49	 : 	fBodyAcc-meanFreq()-X           	 : 	mean value of Fast Fourier Transform of body acceleration frequency along X axis
-	50	 : 	fBodyAcc-meanFreq()-Y          	 : 	mean value of Fast Fourier Transform of body acceleration frequency along Y axis
-	51	 : 	fBodyAcc-meanFreq()-Z           	 : 	mean value of Fast Fourier Transform of body acceleration frequency along Z axis
-	52	 : 	fBodyAccJerk-mean()-X          	 : 	mean value of Fast Fourier Transform of body acceleration Jerk signal along X axis
-	53	 : 	fBodyAccJerk-mean()-Y           	 : 	mean value of Fast Fourier Transform of body acceleration Jerk signal along Y axis
-	54	 : 	fBodyAccJerk-mean()-Z          	 : 	mean value of Fast Fourier Transform of body acceleration Jerk signal along Z axis
-	55	 : 	fBodyAccJerk-std()-X            	 : 	standard deviation of Fast Fourier Transform of body acceleration Jerk signal along X axis
-	56	 : 	fBodyAccJerk-std()-Y           	 : 	standard deviation of Fast Fourier Transform of body acceleration Jerk signal along Y axis
-	57	 : 	fBodyAccJerk-std()-Z            	 : 	standard deviation of Fast Fourier Transform of body acceleration Jerk signal along Z axis
-	58	 : 	fBodyAccJerk-meanFreq()-X      	 : 	mean value of Fast Fourier Transform of body acceleration Jerk signal frequency along X axis
-	59	 : 	fBodyAccJerk-meanFreq()-Y       	 : 	mean value of Fast Fourier Transform of body acceleration Jerk signal frequency along Y axis
-	60	 : 	fBodyAccJerk-meanFreq()-Z      	 : 	mean value of Fast Fourier Transform of body acceleration Jerk signal frequency along Z axis
-	61	 : 	fBodyGyro-mean()-X              	 : 	mean value of Fast Fourier Transform of body angular velocity along X axis
-	62	 : 	fBodyGyro-mean()-Y             	 : 	mean value of Fast Fourier Transform of body angular velocity along Y axis
-	63	 : 	fBodyGyro-mean()-Z              	 : 	mean value of Fast Fourier Transform of body angular velocity along Z axis
-	64	 : 	fBodyGyro-std()-X              	 : 	standard deviation of Fast Fourier Transform of body angular velocity along X axis
-	65	 : 	fBodyGyro-std()-Y               	 : 	standard deviation of Fast Fourier Transform of body angular velocity along Y axis
-	66	 : 	fBodyGyro-std()-Z              	 : 	standard deviation of Fast Fourier Transform of body angular velocity along Z axis
-	67	 : 	fBodyGyro-meanFreq()-X          	 : 	mean value of Fast Fourier Transform of body angular velocity frequency along X axis
-	68	 : 	fBodyGyro-meanFreq()-Y         	 : 	mean value of Fast Fourier Transform of body angular velocity frequency along Y axis
-	69	 : 	fBodyGyro-meanFreq()-Z          	 : 	mean value of Fast Fourier Transform of body angular velocity frequency along Z axis
-	70	 : 	fBodyAccMag-mean()             	 : 	mean value of Fast Fourier Transform of body acceleration magnitude 
-	71	 : 	fBodyAccMag-std()               	 : 	standard deviation of Fast Fourier Transform of body acceleration magnitude 
-	72	 : 	fBodyAccMag-meanFreq()         	 : 	mean value of Fast Fourier Transform of body acceleration magnitude frequency 
-	73	 : 	fBodyBodyAccJerkMag-mean()      	 : 	mean value of Fast Fourier Transform of body acceleration Jerk magnitude 
-	74	 : 	fBodyBodyAccJerkMag-std()      	 : 	standard deviation of Fast Fourier Transform of body acceleration Jerk magnitude 
-	75	 : 	fBodyBodyAccJerkMag-meanFreq()  	 : 	mean value of Fast Fourier Transform of body acceleration Jerk magnitude frequency 
-	76	 : 	fBodyBodyGyroMag-mean()        	 : 	mean value of Fast Fourier Transform of body angular velocity magnitude 
-	77	 : 	fBodyBodyGyroMag-std()          	 : 	standard deviation of Fast Fourier Transform of body angular velocity magnitude 
-	78	 : 	fBodyBodyGyroMag-meanFreq()    	 : 	mean value of Fast Fourier Transform of body angular velocity magnitude frequency 
-	79	 : 	fBodyBodyGyroJerkMag-mean()     	 : 	mean value of Fast Fourier Transform of body angular velocity Jerk magnitude 
-	80	 : 	fBodyBodyGyroJerkMag-std()     	 : 	standard deviation of Fast Fourier Transform of body angular velocity Jerk magnitude 
-	81	 : 	fBodyBodyGyroJerkMag-meanFreq()	 : 	mean value of Fast Fourier Transform of body angular velocity Jerk magnitude frequency 
