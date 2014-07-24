
# Uses descriptive activity names to name the activities in the data set
activity.id <- c(1, 2, 3, 4, 5, 6)
activity.desc <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

# Extracted only the measurements on the mean and standard deviation for each measurement. 
measurements.id <- c(1, 2, 3, 4, 5, 6, 
                     41, 42, 43, 44, 45, 46,
                     81, 82, 83, 84, 85, 86, 
                     121, 122, 123, 124, 125, 126, 
                     161, 162, 163, 164, 165, 166, 
                     201, 202, 
                     214, 215, 
                     227, 228, 
                     240, 241, 
                     253, 254,
                     266, 267, 268, 269, 270, 271,
                     345, 346, 347, 348, 349, 350,
                     424, 425, 426, 427, 428, 429,
                     503, 504,
                     516, 517,
                     529, 530,
                     542, 543)

# Appropriately labels the data set with descriptive variable names. 

measurements.names  <- c("tBodyAcc-mean()-X",
                         "tBodyAcc-mean()-Y",
                         "tBodyAcc-mean()-Z",
                         "tBodyAcc-std()-X",
                         "tBodyAcc-std()-Y",
                         "tBodyAcc-std()-Z",
                         "tGravityAcc-mean()-X",
                         "tGravityAcc-mean()-Y",
                         "tGravityAcc-mean()-Z",
                         "tGravityAcc-std()-X",
                         "tGravityAcc-std()-Y",
                         "tGravityAcc-std()-Z",
                         "tBodyAccJerk-mean()-X",
                         "tBodyAccJerk-mean()-Y",
                         "tBodyAccJerk-mean()-Z",
                         "tBodyAccJerk-std()-X",
                         "tBodyAccJerk-std()-Y",
                         "tBodyAccJerk-std()-Z",
                         "tBodyGyro-mean()-X",
                         "tBodyGyro-mean()-Y",
                         "tBodyGyro-mean()-Z",
                         "tBodyGyro-std()-X",
                         "tBodyGyro-std()-Y",
                         "tBodyGyro-std()-Z",
                         "tBodyGyroJerk-mean()-X",
                         "tBodyGyroJerk-mean()-Y",
                         "tBodyGyroJerk-mean()-Z",
                         "tBodyGyroJerk-std()-X",
                         "tBodyGyroJerk-std()-Y",
                         "tBodyGyroJerk-std()-Z",
                         "tBodyAccMag-mean()",
                         "tBodyAccMag-std()",
                         "tGravityAccMag-mean()",
                         "tGravityAccMag-std()",
                         "tBodyAccJerkMag-mean()",
                         "tBodyAccJerkMag-std()",
                         "tBodyGyroMag-mean()",
                         "tBodyGyroMag-std()",
                         "tBodyGyroJerkMag-mean()",
                         "tBodyGyroJerkMag-std()",
                         "fBodyAcc-mean()-X",
                         "fBodyAcc-mean()-Y",
                         "fBodyAcc-mean()-Z",
                         "fBodyAcc-std()-X",
                         "fBodyAcc-std()-Y",
                         "fBodyAcc-std()-Z",
                         "fBodyAccJerk-mean()-X",
                         "fBodyAccJerk-mean()-Y",
                         "fBodyAccJerk-mean()-Z",
                         "fBodyAccJerk-std()-X",
                         "fBodyAccJerk-std()-Y",
                         "fBodyAccJerk-std()-Z",
                         "fBodyGyro-mean()-X",
                         "fBodyGyro-mean()-Y",
                         "fBodyGyro-mean()-Z",
                         "fBodyGyro-std()-X",
                         "fBodyGyro-std()-Y",
                         "fBodyGyro-std()-Z",
                         "fBodyAccMag-mean()",
                         "fBodyAccMag-std()",
                         "fBodyBodyAccJerkMag-mean()",
                         "fBodyBodyAccJerkMag-std()",
                         "fBodyBodyGyroMag-mean()",
                         "fBodyBodyGyroMag-std()",
                         "fBodyBodyGyroJerkMag-mean()",
                         "fBodyBodyGyroJerkMag-std()")

getTrainFile <- function(dir=getwd()) {
  #returns a dataSet and all its features
  path_X <- file.path(dir, "X_train.txt")
  path_Y <- file.path(dir, "Y_train.txt")
  path_Subject <- file.path(dir, "subject_train.txt")
  
  #Read data and columns selected for analysis from train files
  data.train <- read.table(path_X)
  data.train <- data.train[measurements.id] 
  activity.train <- read.table(path_Y)
  subject.train <- read.table(path_Subject)
  
  #put names to columns and assign data.train to fulldata.train
  names(data.train) <- measurements.names
  fulldata.train <- data.train
  
  #Transform activity.train to factor and add it as a column to fulldata.train
  names(activity.train) <- c("activity")
  activity.train$activity <- factor(activity.train$activity, levels = activity.id, labels = activity.desc)
  fulldata.train <- cbind(fulldata.train, activity = activity.train$activity)
  
  #put name to subject.train and add it as a colummn to fulldata.train
  names(subject.train) <- c("subject")
  fulldata.train <- cbind(fulldata.train, subject = subject.train$subject)
  
  #return data
  fulldata.train
}

getTestFile <- function(dir=getwd()) {
  #returns a dataSet and all its features
  path_X <- file.path(dir, "X_test.txt")
  path_Y <- file.path(dir, "Y_test.txt")
  path_Subject <- file.path(dir, "subject_test.txt")
  
  #Read test files
  data.test <- read.table(path_X)
  data.test <- data.test[measurements.id] 
  activity.test <- read.table(path_Y)
  subject.test <- read.table(path_Subject)
  
  #put names to columns and assign data.test to fulldata.test
  names(data.test) <- measurements.names
  fulldata.test <- data.test
  
  #Transform activity.test to factor and add it as a column to fulldata.test
  names(activity.test) <- c("activity")
  activity.test$activity <- factor(activity.test$activity, levels = activity.id, labels = activity.desc)
  fulldata.test <- cbind(fulldata.test, activity = activity.test$activity)
  
  #put name to subject.test and add it as a colummn to fulldata.test
  names(subject.test) <- c("subject")
  fulldata.test <- cbind(fulldata.test, subject = subject.test$subject)
  
  #Return data
  fulldata.test
}



#Analysis tasks
#1.-Read datasets
dftrain <- getTrainFile(paste(getwd(), "/data/UCI HAR Dataset/train", sep = ""))
dftest <- getTestFile(paste(getwd(), "/data/UCI HAR Dataset/test", sep = ""))

#2.-Merge datasets.
df <- rbind(dftrain, dftest)

#3.- Tidy data set with the average of each variable for each activity and each subject. 

install.packages("stringr")
library(reshape2)

dfReshape <- melt(df, id=c("subject","activity"))

# Calculating data frame of meanS
dfTidyMeans <- dcast(dfReshape, subject + activity ~ variable, mean) 


# Save tidy data.
file.name <- file.path(getwd(), "/data/", "dfTidyMeans.txt")
write.table(df, file.name, row.names = FALSE, quote = FALSE)


