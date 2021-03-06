library("plyr")

#read test and training datasets 
TestSubject <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
TestX <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
TestY <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
TrainSubject <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
TrainX <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
TrainY <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

#read features files
FeaturesData <- read.delim("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, sep = " ",  header = FALSE)
#collect feature names corresponding to the mean and standard deviation of each measured variable
features <- grep("[M,m]ean|[S,s]td", FeaturesData$V2)
FeatureNames <- gsub("mean", "Mean", FeaturesData$V2[features])
FeatureNames <- gsub("std", "StDev", FeatureNames)
#clean feature names
FeatureNames <- gsub("[-()]", "", FeatureNames)
FeatureNames <- gsub("-", "", FeatureNames)
FeatureNames <- gsub(",", "", FeatureNames)
FeatureNames <- gsub("angle", "Angle", FeatureNames)
FeatureNames <- gsub("gravity", "Gravity", FeatureNames)

#create list with activity names for each activity ID
TrainY_label <- c()
TrainY_label[TrainY==1] <- "Walking"
TrainY_label[TrainY==2] <- "WalkingUpstairs"
TrainY_label[TrainY==3] <- "WalkingDownstairs"
TrainY_label[TrainY==4] <- "Sitting"
TrainY_label[TrainY==5] <- "Standing"
TrainY_label[TrainY==6] <- "Laying"
TestY_label <- c()
TestY_label[TestY==1] <- "Walking"
TestY_label[TestY==2] <- "WalkingUpstairs"
TestY_label[TestY==3] <- "WalkingDownstairs"
TestY_label[TestY==4] <- "Sitting"
TestY_label[TestY==5] <- "Standing"
TestY_label[TestY==6] <- "Laying"

#merge the two datasets and create the new clean dataset
test <- cbind(TestSubject, TestY, TestY_label, TestX[,features])
colnames(test) <- as.character(1:length(test[1,]))
train <- cbind(TrainSubject, TrainY, TrainY_label, TrainX[,features])
colnames(train) <- as.character(1:length(train[1,]))
clean_data <- rbind(test, train)

FeatureNames <- c("SubjectID", "TrainingID", "TrainingLabel", FeatureNames)
colnames(clean_data) <- FeatureNames

#create the tidy dataset by taking the mean for each measured variable with respect to each activity and subject
tidy_data <- ddply(clean_data, .(SubjectID, TrainingID, TrainingLabel), function(x) colMeans(x[,4:length(x)]))

#write the tidy dataset into a file
write.table(tidy_data, file = "tidy_data.txt", sep = " ")