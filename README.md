
## Getting and Cleaning Data Week 4 Project

### Files In this repo:
* README.md  - this file
* CodeBook.md - code book describes the output file
* run_analysis.R actual R code to load and transform UCI data set
* tidydata.tx - this is the output of my analysis

## What I did.
### Step 1 - download zip file and unzip it and understand what we got.
A directory "UCI HAR Dataset" is created.  It has following group of files that have measurements:
For each "train" and "test".

## We have to understand what is in each file and which files we need.  There are no headers.
After going through the supplied "README.txt" and looking at files (load them in df and do dim), here is what we need:
## Train Data Set:
X_train.txt  This is the train data set, 
subject_train.txt  Subjects that participated in training data set, each row identifies subject for each training data row.
y_train.txt - Activity that was measured in each row in training data set. 

The directory "Internal Signals" has detailed data and we do not need them.

## Test Data Set
X_test.txt  This is the test data set, 
subject_test.txt  Subjects that participated in test data set, each row identifies subject for each test data row.
y_test.txt - Activity that was measured in each row in test data set. 
The directory "Internal Signals" has detailed data and we do not need them.

## Common Files - data applies to both test and train data sets
features.txt - descriptive names for each of 561 variables
activity_labels.txt - descriptive lable for each of 1 to 6 activities.  Values are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

features_info.txt - description of study.
README.txt - read me files from UCI.


## Stepts for loading and Processing.
# Step 1A Load Train Data Set and dimensions
Load file X_train.txt into data fram train_data_set. 7352 rows and 561 variables
Load file subject_train_txt into df subjects_train. 7352 rows, values range from 1 to 30
Load y_train.txt into df activity_train. 7352 rows. Values 1 to 6

# Step 1B  Load Train Data Set and dimensions
Load file X_test.txt into data fram test_data_set. 2947 rows and 561 variables
Load file subject_test_txt into df subjects_test. 2947 rows, values range from 1 to 30. Not all subject participated in test study. Only 2,4,9,10,12,13,18,20 and 24
Load y_test.txt into df activity_train. 2947 rows. Values 1 to 6

## Step 2 Assign Descriptive lables to variables in train and test data set. (Required in Question 4)
Load file features.txt into df features_list and use "make.names" function to make a character vector cNames.
The file features_list has some duplicate names. make.names takes care of that.
Use names function to assign descriptive variable names to test_data_set and train_data_set.

## Step 3 add descriptive heading to list of activities and subjects.
Add label "Subjects" to subjects_train and subjects_test.
Add label "Activity" to activity_train and activity_test.

## Step 4 add dimensions Activity and Subject to train and test data set
Use function cbind to add dimensions Activity and Subject to train_data_set and test_data_set

## Step 5 Merge train data set and test data set. (Question 1)
Use function rbind to merge train_data_set and test_data_set.  Result is merged_data_set

## Step 6 Extract only the measurements on the mean and Standard deviation (Question 2)
I used select function to select only columns which had word "mean" or "std" in name.
Requirements are not clear so my logic picked columns which have word mean any where like "meanFreq" also.

Assigned the result to a new data table merged_data_set2.

## Step 7 Assign descriptive name to each activity (Question 3)
I used function mutate to add a new column "Activity_Name" to data set merged_data_set2.
I kept both "Activity" and "Activity_Name" to validate data.

## Step 8 Create a new data set with average of each variable for each activity and subject
I did this in two steps.
First apply function group_by on data set merged_data_set2 and assing result to merged_data_set2g.
Second apply function summarise_all to merged_data_set2g to generate required mean.
Result is assigned to tidydata.  This has 180 rows and 89 variables (86 measurements, Subject, Activity and Activity_Name)
The study had 30 subjects and 6 Activities so 180 rows is correct number.

## Step 9 Create a text file with tidy data
I used function write.table to create text file tidydata.txt which has result of mmy work.






