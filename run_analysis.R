## Course Project - Coursera - Getting and Cleaning Data

## load reshape package to perform last step of course project
library(reshape2)

## download zip file

cpurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

cpfilename <- "courseproject.zip"

if(!file.exists(cpfilename)){
download.file(cpurl, cpfilename)
}

unzip("courseproject.zip")

## Reading activity labels data
cpactivitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")

## Reading feature data
cpfeatures <- read.table("UCI HAR Dataset/features.txt")

## TEST DATA MASSAGING

## Reading Test subject data set
testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Reading Test activity data set
testactivity <- read.table("UCI HAR Dataset/test/y_test.txt")

## Reading Test measurement data set
testdata <- read.table("UCI HAR Dataset/test/X_test.txt")

## Get the subset of Test measurement data set with only mean and standard deviation for each measurement
testdatasub <- testdata[,grep("mean()|std()",cpfeatures[,2])]

## Combine Test subject, activity and mean/standard deviation measurement data sets
cptestdata <- cbind(testsubject, testactivity, testdatasub)

## TRAINING DATA MASSAGING

## Reading Train subject data set
trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Reading Train activity data set
trainactivity <- read.table("UCI HAR Dataset/train/y_train.txt")

## Reading Train measurement data set
traindata <- read.table("UCI HAR Dataset/train/X_train.txt")

## Get the subset of Train measurement data set with only mean and standard deviation for each measurement
traindatasub <- traindata[,grep("mean()|std()",cpfeatures[,2])]

## Combine Train subject, activity and mean/standard deviation measurement data sets
cptraindata <- cbind(trainsubject, trainactivity, traindatasub)

## COMBINE TEST and TRAINING data sets prepared in above steps
cpcombinedata <- rbind(cptestdata, cptraindata)

## Use descriptive activity names to name the activities in the data set
cpcombinedata$activity <- cpactivitylabels[,2][match(cpcombinedata$activity, cpactivitylabels[,1])]

## Appropriately label the data set with descriptive variable names
cpmeasurementlabels <- grep("mean()|std()",cpfeatures[,2], value = TRUE)

cpmeasurementlabels <- gsub("mean", "MEAN", cpmeasurementlabels)

cpmeasurementlabels <- gsub("std", "STDDEV", cpmeasurementlabels)

cpmeasurementlabels <- gsub("[()]", "", cpmeasurementlabels)

colnames(cpcombinedata) <- c("subject", "activity", cpmeasurementlabels)

## From the above dataset ""cpcombinedata"", create a second, independent tidy data set with the average of each variable for each activity and each subject.

## Melt the data set with 'subject' and 'activity' as ids and rest all as variables (melted)
cpcombinedata.melted <- melt(cpcombinedata, id=c("subject", "activity"))

cpcombinedata.final <- dcast(cpcombinedata.melted, subject + activity ~ variable, mean)

write.table(cpcombinedata.final, "final_tidy.txt", row.names = FALSE, quote = FALSE)








