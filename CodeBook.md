Code Book for Human Activity Recognition Using Smartphones Dataset version 1.1
==============================================================================

## Data Providers
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

## Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. For more information about this dataset contact: activityrecognition@smartlab.ws.

**Note:** Features/measurements are normalized and bounded within [-1,1].

A **tidy dataset** that contains the subject identifiers, activity and means, by subject and activity, for all original mean and standard deviation measurements has been produced and included with the original data as a derived work.

The following information is provided for each record in the training and test data:

- An identifier of the subject who carried out the experiment. (an integer number ranging from 1 to 30)
- Its activity label. (1 for WALKING, 2 for WALKING_UPSTAIRS, etc.)
- A 561-feature vector with time and frequency domain variables. Each column is for a different measurement.
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.

## Date Files Included in the Dataset
The following files were included in the original dataset:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Measurent/feature vectors training set.
- 'train/y_train.txt': Training labels that identify the subject.
- 'test/X_test.txt': Measurent/feature vectors test set.
- 'test/y_test.txt': Test labels that identify the subject.

The following files are available for the train and test data. Their descriptions are equivalent and they are also part of the original dataset. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

The following data files are included in the derived work:
- 'CodeBook.md' (this document) : Describes the variables, the data, and any transformations or work that was performed to clean up the data.
- 'README.md' : Explains how all of the scripts work and how they are connected.
- 'tidy_data.csv' : The tidy dataset that was derived from the original datasets.

## Feature Vectors for Training and Test Datasets
The measurment features are contained in files 'train/X_train.txt' and 'test/X_test.txt'. These files only contain measurement data. They do not contain subject identifiers or activity identifiers. The data is in fixed width file format with each measurement occupying 16 characters.

'X_train.txt' contains 7,352 rows of data and 561 columns (features).  
'X_test.txt' contains 2,947 rows of data and 561 columns.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Subject Identifiers for the Training and Test Datasets
Files 'train/subject_train.txt' and 'test/subject_test.txt'contain a single column of whole numbers that are subject identifiers. There are 30 subjects/people and the identifiers range from 1 to 30. The subject identifiers in these files are in the same order and correspond to the feature vectors in the 'X_train.txt' and 'Y_train.txt' files.

'train/subject_train.txt' contains 7,352 rows of data and 1 column (subject identifier).  
'test/subject_test.txt' contains 2,947 rows of data and 1 column.

## Activity Labels
The 6 activity labels are listed in file 'activity_labels.txt'. The contents of this file follows:

1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  

## Activity Identifiers/Classes
The activity identifiers that correspond to the training and test feature vectors are listed in files 'train/y_train.txt' and 'test/y_test.txt'. There are 6 activities and the identifiers/classes range from 1 to 6. The activity identifiers in these files are in the same order and correspond to the feature vectors in the 'X_train.txt' and 'X_test.txt' files.

'train/y_train.txt' contains 7,352 rows of data and 1 column (activity identifier/class).  
'test/y_test.txt'  contains 2,947 rows of data and 1 column.

## Feature Identifiers for the Train and Test Feature Datasets
File 'features.txt' contains the list of feature identifiers and short names for each of the columns in the training and test feature vector datasets. The feature identifiers are whole numbers ranging from 1 to 561. The feature identifiers and descriptions are separated by a space character.

'features.txt' contains 561 rows of data and 2 columns. Sample contents follows:

1 tBodyAcc-mean()-X  
2 tBodyAcc-mean()-Y  
3 tBodyAcc-mean()-Z  
4 tBodyAcc-std()-X  
5 tBodyAcc-std()-Y  
6 tBodyAcc-std()-Z  

## Tidy Data Set
File 'tidy_data.csv' contains data that was derived from the original data files described above. An overview of how the tidy dataset was created follows:

1. The training and test subject identifiers, activity identifiers and feature vectors were merged to form complete training and test rows that include the subject identifier, activity class and feature vectors.
2. The test dateset was appended to the training dataset to form 1 dataset.
3. Features from the original dataset that were computed by using the mean or standard deviation of a measurement were extracted and retained for further steps.
4. Activity identifiers/classes were replaced with their corresponding descriptions in lower case to make them easier to read.
5. Descriptive column names were applied to all columns in the dataset.
6. A new tidy dataset was created by computing the mean feature value by subject and activity.
7. Descriptive feature column names were assigned to the tidy dataset.
8. The tidy dataset was output to file 'tidy_data.csv' in CSV format.

For more detail on how the above steps were carried out please see file README.MD.

File 'tidy_data.csv' contains 181 rows, including a header row, and 68 columns. The columns are as follows:

- "subject_id" : Subject identifier that corresponds to the subject identifier in the original data. Ranges from 1 to 30.
- "activity" : Character description of the activity that corresponds to the activities in the original dataset, other than being in lowercase. Activities are 'walking', 'walking_upstairs', 'walking_downstairs', 'sitting', 'standing' and 'laying'.
- "mean_*" : Where * is one of the original feature names that was computed by taking the mean or standard deviation of a measurement. There are 66 columns that are means of the original features by subject and activity. An example feature name is "mean_fBodyAccJerk-mean()-X". For a complete list see file 'tidy_data.csv'.

**Note** that the original feature values were normalized to be bounded within -1 to 1, therefore the tidy data features will also be bounded to be within -1 to 1 because they are means of the original data.

## License
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
