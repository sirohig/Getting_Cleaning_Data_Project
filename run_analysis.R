#File run_analysis.R
# Reading and Cleaning Data Week 4 Project
# This file has the R code for my project work

# Get the data files
# I had created a dir week_4_project
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./week_4_project/Dataset.zip",method = "curl")

#unzip the files
unzip("./week_4_project/Dataset.zip",exdir="./week_4_project/")
# unzip creates a dir "UCI HAR Dataset" which has the files

#load dplyr library
library(dplyr)

# read files into data tables
# First Training data
subjects_train<-read.table("./train/subject_train.txt",header=FALSE) #7352 rows and 1 variable
activity_train<-read.table("./train/y_train.txt",header=FALSE) #7352 rows and 1 variable
train_data_set<-read.table("./train/X_train.txt",header=FALSE) #7352 rows and 561 variable

# Now test data
subjects_test<-read.table("./test/subject_test.txt",header=FALSE) #2947 rows and 1 variable
activity_test<-read.table("./test/y_test.txt",header=FALSE) # 2947 rows 1 variable
test_data_set<-read.table("./test/X_test.txt",header=FALSE) #2947 rows 561 variables

# labels for variables 
feature_list<-read.table("features.txt",header=FALSE) #561 rows, col2 has names we need
# file features.txt has some duplicate names which cause problem later on. So make a list of unique column names
cNames<-make.names(names = feature_list$V2,unique = TRUE,allow_ = TRUE)

# I am doing Q4 here. The following two statements replace variable names V1...V561 by descriptive names
#***** Q4 ******* DONE HERE ******
names(train_data_set)<-cNames
names(test_data_set)<-cNames

# add a column label to activites
names(activity_train)<-"Activity"
names(activity_test)<-"Activity"

# add a column lable to subjects
names(subjects_train)<-"Subject"
names(subjects_test)<-"Subject"

# now add columns Subject and Activity to data sets
train_data_set<-cbind(train_data_set,subjects_train,activity_train)  # now has 7357 rows and 563 columns
test_data_set<-cbind(test_data_set,subjects_test,activity_test) # now has 2947 rows and 563 columns

# Question 1 merge test and train data sets.  We are adding rows.
merged_data_set<-rbind(train_data_set,test_data_set) # 10299 rows and 563 columns

# Question 2 extract only mean and SD for each measurements.  
# We look for variables which have word mean or std in their names. Plus Subject and Activity
# Requirements are not clear.  So the next statement has selected columns which have word 'mean' like meanFreq also
merged_data_set2<-select(merged_data_set,matches('mean|std'),Subject,Activity) # 10299 rows and 88 columns

#Q3 Use descriptive activity names to name the activites in data set.
# file activity_labels.txt has the names of activities
activity_labels<-read.table("activity_labels.txt",header=FALSE)
# added a column name Activity_Name.  I kept Activity also to validate data
merged_data_set2<-mutate(merged_data_set2,Activity_Name=factor(Activity,levels = 1:6,labels = activity_labels$V2))

#Q4 Add descriptive variable labels
# I have already replaced variables names like V1...V561 by their descriptive names using cNames see earlier notes.

# Q5 Create a new data set with average of each variable for each activity and subject
# First group by data
merged_data_set2g<-group_by(merged_data_set2,Subject,Activity,Activity_Name)
# now summarize all 
tidydata<-summarise_all(merged_data_set2g,mean) #180 rows and 89 variables (86 and Subject, Activity, Activity_Name)
# There are 30 subjects and 6 Acitivities so row count of 180 is correct.

# Write the tidydata to a text file
write.table(tidydata,file="tidydata.txt",row.names = FALSE)
