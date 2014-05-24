# Getting and Cleaning Data Project
### 5/23/2014  Kathy Pavelock

## Introduction

This file describes the R Programming script, run_analysis.R.  The Getting and Cleaning Data project is based on information from [Human Activity Recognition Using Smartphones Data Set[1]](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Human Activity Recognition Using Smartphones Data Set"[1]"). 


## Citation
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


## Assumptions
  
1. The raw data files have been downloaded from 
   <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

2. The raw data files have been unzipped and are located in the R working directory and assumes that setwd() has been executed prior to running this script.

3. The following raw data files are needed for this script:
> activity_labels.txt - table of activity id numbers and associated activity type  
> features.txt - table of column headings for the readings  
> subject_test.txt - table of subject id numbers for the test data  
> subject_train.txt - table of subject id numbers for the train data  
> X_test.txt - table of readings representing the test data  
> X_train.txt - table of readings representing the train data  
> y_test.txt - table of activity codes for each observation in the test data  
> y_train.txt - table of activity codes for each observation in the train data  
4. For Extracting the measurements on the mean and standard deviation, I found the labels that have “mean” or “std”, except not the ones that start with “angle”.

## Features of the script
In general, run_analysis.R does the following:   
  
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4.   Appropriately label the data set with descriptive activity names. 
5.   Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More specifically, run_analysis.R does the following:  

1.  For merging the training and the test sets and using descriptive activity names and appropriately label the data set with descriptive activity names:
> Used features.txt for the column names (read.table)
> Used activity_labels.txt for activity# associated with activity type (read.table)  
> Used subject_test.txt for testSubjects (read.table)  
> Used subject_train.txt for trainSubjects (read.table)  
> Used rbind(testSubjects,trainSubjects) for allSubjects  
> Used y_test.txt for testLabels [activity #] (read.table)  
> Used y_train for trainLabels [activity #] (read.table)  
> Used rbind(testLabels,trainLabels) for allLabels [activity #]  
> Used X_test.txt for testData (read.table)  
> Used X_train.txt for trainData (read.table)  
> Used rbind(testData,trainData)for allData  
> Used cbind(allLabels,allData) for allData with Activity Labels  
*
>Used cbind(allSubjects,allData) for allData with Subjects and Activity Labels  
> Used merge(allData,activityLabels,by.x="activity") for allData with assoiated Activity Label  

2. For extracting the measurements on the mean and standard deviation for each measurement:
> Used append(grep("mean",names(allData)),grep("std",names(allData))) for extractColumns  
> Used append(c(2,564),extractColumns) to include the subject id and the activity description in extractColumns  
> Used subsetData <- allData[,extractColumns] to create the subset  
> Saved the dataset:  write.table(subsetData,file="Samsung_Activity_mean_std.txt")  

3.   For creating a second, independent tidy data set with the average of each variable for each activity and each subject:
> Used aggregate(allData[3:563], by=list(allData$subject,allData$Activity.Label), FUN=mean, na.rm=TRUE) for tempGroupData  
> set appropriate column names:  
> colnames(tempGroupData) <- paste("Avg", colnames(tempGroupData), sep = "_")  
> colnames(tempGroupData)[1] <- "subject"  
> colnames(tempGroupData)[2] <- "activity.label"  
> Saved the dataset:  write.table( ="Samsung_Subject_Activity_avg.txt")  

## Codebook

A codebook has been created describing the the saved data sets and the variables used in run_analysis.R.  The code book is provided as a markdown file, "Codebook.md"  