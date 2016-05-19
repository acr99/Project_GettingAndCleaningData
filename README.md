# Project_GettingAndCleaningData
The script run_analysis.R performs the following steps:
1. read test and training datasets 
2. read features files
3. collect feature names corresponding to the mean and standard deviation of each measured variable
4. clean feature names
5. create list with activity names for each activity ID
6. merge the two datasets and create the new clean dataset
7. create the tidy dataset by taking the mean for each measured variable with respect to each activity and subject
8. write the tidy dataset into a file


# Requirement
You should create one R script called run_analysis.R that does the following.
    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.