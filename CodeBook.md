# Code Book

## Script
The script run_analysis.R performs the following steps:
1. read test and training datasets 
2. read features files
3. collect feature names corresponding to the mean and standard deviation of each measured variable
4. clean feature names
5. create list with activity names for each activity ID
6. merge the two datasets and create the new clean dataset
7. create the tidy dataset by taking the mean for each measured variable with respect to each activity and subject
8. write the tidy dataset into a file

## Run Code
Code needs to be placed in the same folder with the unarchived data in its original folder "getdata_projectfiles_UCI HAR Dataset"

## Tidy Data
Columns: Mean and standard deviation for each measured variable
Lines: Measured variables for each activity and subject

The following features are summarized in the dataset
SubjectID: 1 to 30
TrainingID: 1 to 6
TrainingLabel: {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING
, STANDING, LAYING}

Measured variables (means - contain "Mean" in their names; standard deviation contain "StDev" in their names)
-tBodyAccMeanX
-tBodyAccMeanY
-tBodyAccMeanZ
-tBodyAccStDevX
-tBodyAccStDevY
-tBodyAccStDevZ
-tGravityAccMeanX
-tGravityAccMeanY
-tGravityAccMeanZ
-tGravityAccStDevX
-tGravityAccStDevY
-tGravityAccStDevZ
-tBodyAccJerkMeanX
-tBodyAccJerkMeanY
-tBodyAccJerkMeanZ
-tBodyAccJerkStDevX
-tBodyAccJerkStDevY
-tBodyAccJerkStDevZ
-tBodyGyroMeanX
-tBodyGyroMeanY
-tBodyGyroMeanZ
-tBodyGyroStDevX
-tBodyGyroStDevY
-tBodyGyroStDevZ
-tBodyGyroJerkMeanX
-tBodyGyroJerkMeanY
-tBodyGyroJerkMeanZ
-tBodyGyroJerkStDevX
-tBodyGyroJerkStDevY
-tBodyGyroJerkStDevZ
-tBodyAccMagMean
-tBodyAccMagStDev
-tGravityAccMagMean
-tGravityAccMagStDev
-tBodyAccJerkMagMean
-tBodyAccJerkMagStDev
-tBodyGyroMagMean
-tBodyGyroMagStDev
-tBodyGyroJerkMagMean
-tBodyGyroJerkMagStDev
-fBodyAccMeanX
-fBodyAccMeanY
-fBodyAccMeanZ
-fBodyAccStDevX
-fBodyAccStDevY
-fBodyAccStDevZ
-fBodyAccMeanFreqX
-fBodyAccMeanFreqY
-fBodyAccMeanFreqZ
-fBodyAccJerkMeanX
-fBodyAccJerkMeanY
-fBodyAccJerkMeanZ
-fBodyAccJerkStDevX
-fBodyAccJerkStDevY
-fBodyAccJerkStDevZ
-fBodyAccJerkMeanFreqX
-fBodyAccJerkMeanFreqY
-fBodyAccJerkMeanFreqZ
-fBodyGyroMeanX
-fBodyGyroMeanY
-fBodyGyroMeanZ
-fBodyGyroStDevX
-fBodyGyroStDevY
-fBodyGyroStDevZ
-fBodyGyroMeanFreqX
-fBodyGyroMeanFreqY
-fBodyGyroMeanFreqZ
-fBodyAccMagMean
-fBodyAccMagStDev
-fBodyAccMagMeanFreq
-fBodyBodyAccJerkMagMean
-fBodyBodyAccJerkMagStDev
-fBodyBodyAccJerkMagMeanFreq
-fBodyBodyGyroMagMean
-fBodyBodyGyroMagStDev
-fBodyBodyGyroMagMeanFreq
-fBodyBodyGyroJerkMagMean
-fBodyBodyGyroJerkMagStDev
-fBodyBodyGyroJerkMagMeanFreq
-AngletBodyAccMeanGravity
-AngletBodyAccJerkMeanGravityMean
-AngletBodyGyroMeanGravityMean
-AngletBodyGyroJerkMeanGravityMean
-AngleXGravityMean
-AngleYGravityMean
-AngleZGravityMean
