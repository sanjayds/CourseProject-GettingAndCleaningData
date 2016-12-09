# CourseProject-GettingAndCleaningData
#Repository to submit Course project for Coursera's Getting And Cleaning Data
R script run_analysis.R does following activities as required to complete course project -
Load reshape package to perform melting and casting of data to get the desired shape as required in last step of course project
download zip file
Reading activity labels data
Reading feature data
Reading Test subject data set
Reading Test activity data set
Reading Test measurement data set
Get the subset of Test measurement data set with only mean and standard deviation for each measurement
Combine Test subject, activity and mean/standard deviation measurement data sets
Reading Train subject data set
Reading Train activity data set
Reading Train measurement data set
Get the subset of Train measurement data set with only mean and standard deviation for each measurement
Combine Training subject, activity and mean/standard deviation measurement data sets
COMBINE TEST and TRAINING data sets prepared in above steps
Use descriptive activity names to name the activities in the data set
Appropriately label the data set with descriptive variable names
From the above dataset, create a second, independent tidy data set with the average of each variable for each activity and each subject.
Melt the data set with 'subject' and 'activity' as ids and rest all as variables (melted)
Cast the dataset to get mean of each variable for each activity and each subject.


