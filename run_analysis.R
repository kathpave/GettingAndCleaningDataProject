## Merging the training and test datasets

## determine the column names
colData <- read.table("features.txt",header=FALSE)

#read in the activity labels
activityLabels <- read.table("activity_labels.txt",col.names=c("activity","Activity.Label"))

#read in test and train subjects
file1 = "subject_test.txt"
file2 = "subject_train.txt"
testSubjects <- read.table(file1,col.names=c("subject"))
trainSubjects <- read.table(file2,,col.names=c("subject"))
allSubjects <- rbind(testSubjects,trainSubjects)

#read in test and train activity labels
file1 = "y_test.txt"
file2 = "y_train.txt"
testLabels <- read.table(file1,col.names=c("activity"))
trainLabels <- read.table(file2,col.names=c("activity"))
allLabels <- rbind(testLabels,trainLabels)

## read in test and train data files
file1 = "X_test.txt"
file2 = "X_train.txt"
testTable <- read.table(file1,col.names=colData[,2])
trainTable <- read.table(file2,col.names=colData[,2])
allData <- rbind(testTable,trainTable)

## add the activity and subject columns
allData <- cbind(allLabels,allData)
allData <- cbind(allSubjects,allData)

## merge the activity labels with the activity number
allData <- merge(allData,activityLabels,by.x="activity")

## extract the measurements on the mean and standard deviation for each measurement
extractColumns <- append(grep("mean",names(allData)),grep("std",names(allData)))
## include the subject id and the activity description
extractColumns <- append(c(2,564),extractColumns)
subsetData <- allData[,extractColumns]

##Save the tidy dataset to a file for upload to github
write.table(subsetData,file="Samsung_Activity_mean_std.txt")

##create a new dataset with the avg of each activity and each subject.
## assuming that data needs to be grouped by subject and then by activity
tempGroupData<-aggregate(allData[3:563], by=list(allData$subject,allData$Activity.Label), FUN=mean, na.rm=TRUE)
## adjust the column names
colnames(tempGroupData) <- paste("Avg", colnames(tempGroupData), sep = "_")
colnames(tempGroupData)[1] <- "subject"
colnames(tempGroupData)[2] <- "activity.label"

# save the avg dataset
write.table( tempGroupData,file="Samsung_Subject_Activity_avg.txt")
