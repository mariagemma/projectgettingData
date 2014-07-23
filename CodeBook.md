
#variables used in run analysis
#------------------------------

#Data frame created to analysis contents next columns:

1.- A subject column identifying person who do an activity (Values from 1 to 30)

2.- An activity column which identify activities done by a subject (values from 1 to 6)
Activity Identifier:
1, 2, 3, 4, 5, 6

Activities description
"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

3.- Several columns with data about means and standard deviation for each measurement
#Body acceleration (Time)
Columns:
1, 2, 3, 4, 5, 6

Var names:
"tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", 
"tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z"

#Gravity acceleration (Time)
Columns:
41, 42, 43, 44, 45, 46

Var names:
"tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z",
"tGravityAcc-std()-X",  "tGravityAcc-std()-Y",  "tGravityAcc-std()-Z"

#Body Acceleration Jerk (Time)
Columns:
81, 82, 83, 84, 85, 86

Var names:
"tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z",
"tBodyAccJerk-std()-X",  "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z"

#Body Gyroscope (Time)
Columns:
121, 122, 123, 124, 125, 126

Var names:
"tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", 
"tBodyGyro-std()-X",  "tBodyGyro-std()-Y", "tBodyGyro-std()-Z"

#Body Gyroscope Jerk (Time)
Columns:
161, 162, 163, 164, 165, 166

Var names:
"tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z",
"tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z"
                         
#Body acceleration Mag (Time)
Columns:
201, 202

Var names:
"tBodyAccMag-mean()", "tBodyAccMag-std()"
                         
#Gravity acceleration Mag (Time)
Columns:                         
214, 215

Var names:
"tGravityAccMag-mean()", "tGravityAccMag-std()"

#Body acceleration Jerk Mag (Time)
227, 228

Var names:
"tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()"

#Body Gyroscope Mag (Time)
Columns:
240, 241

Var names:
"tBodyGyroMag-mean()", "tBodyGyroMag-std()"

#Body Gyroscope Jerk Mag (Time)
Columns:
253, 254

Var names:
"tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()"

#Body acceleration (Domain frequency)
Columns:
266, 267, 268, 269, 270, 271

Var names:
"fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z",
"fBodyAcc-std()-X",  "fBodyAcc-std()-Y",  "fBodyAcc-std()-Z"

#Body acceleration Jerk (Domain frequency)
Columns:
345, 346, 347, 348, 349, 350

Var names:
"fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z",
"fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z"

#Body Gyroscope (Domain frequency)
Columns:
424, 425, 426, 427, 428, 429

Var names:
"fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z",
"fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z"

#Body Acceleration Mag (Domain frequency)
Columns:
503, 504

Var names:
"fBodyAccMag-mean()", "fBodyAccMag-std()",

#Body Acceleration Jerk Mag (Domain frequency)
Columns:
516, 517

Var names:
"fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()",

#Body Gyroscope Mag (Domain frequency)
Columns:
529, 530

Var names:
"fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()",

#Body Gyroscope Jerk Mag (Domain frequency)
Columns:
542, 543

Var names:
"fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")  
                       
                                            
                        
#Run Analysis tasks
1- Get measurements, activities and subjects of train files

2- Get measurements, activities and subjects of test files

3- Merge all data in a simple data frame

4- Get means of all measurements by subject and activity