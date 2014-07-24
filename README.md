Getting and Cleaning data project
---------------------------------

Content:

1- A run_analysis.R script file to run analysis
2- A codebook.md file with all variable descriptions and tasks run by scripts

Functions of run_analysis.R file:

getTrainFile()
--------------
This function returns a dataSet and all its features (activities, subjects and measurements
parameters:
  dir: is directory where is the set
  
getTestFile()
-------------
This function returns a dataSet and all its features (activities, subjects and measurements
parameters:
  dir: is directory where is the set
  
Analysis task descriptions
---------------------------
Note: previously you must download data of website
Unzip data and put them into a directories like these into your main directory of project
/data/UCI HAR Dataset/train
/data/UCI HAR Dataset/test

1.- Reading files concerned to two samples (train group and test group) and get data sets

2.- Merges training and test data sets to create a simple data set.
    Add all rows to a new dataset (70% are training data and 30% are test data).
 
We must get these results
  dftrain: there are 7352 obs. in dataset 
  dftest: there are 2947 obs. in dataset
  df: there are 10299 obs. in dataset


3- Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

Note: You will need to donwload this package manually of page http://cran.r-project.org/web/packages/reshape2/index.html
and install previously package stringr
  
3.1- Regrouping variables by activity, subject and mean and std measurements values using melt function.
Note: melt convert and object in a molten data set

3.2- Creates a dataset of measurement's meanvalues by subject and activity


  
  