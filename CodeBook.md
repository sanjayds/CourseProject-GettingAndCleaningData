#Code Book#
This Code book explains the data in output file "final_tidy.txt".
* It has total 81 columns.
  * First column - subject - contains the subject's id. Total 30 subjects were used for this research so subject column has value 1 to 30.
  * Second column - activity - It contains 6 activities performed on 30 subjects. Those 6 activities are -
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING 
  * 3rd to 81st columns have different measurements performed on these 30 subjects doing 6 different activities. These columns have the average value of different measurements per subject per activity.
    [1] "tBodyAcc-MEAN-X"               "tBodyAcc-MEAN-Y"               "tBodyAcc-MEAN-Z"               "tBodyAcc-STDDEV-X"             "tBodyAcc-STDDEV-Y"            
 [6] "tBodyAcc-STDDEV-Z"             "tGravityAcc-MEAN-X"            "tGravityAcc-MEAN-Y"            "tGravityAcc-MEAN-Z"            "tGravityAcc-STDDEV-X"         
[11] "tGravityAcc-STDDEV-Y"          "tGravityAcc-STDDEV-Z"          "tBodyAccJerk-MEAN-X"           "tBodyAccJerk-MEAN-Y"           "tBodyAccJerk-MEAN-Z"          
[16] "tBodyAccJerk-STDDEV-X"         "tBodyAccJerk-STDDEV-Y"         "tBodyAccJerk-STDDEV-Z"         "tBodyGyro-MEAN-X"              "tBodyGyro-MEAN-Y"             
[21] "tBodyGyro-MEAN-Z"              "tBodyGyro-STDDEV-X"            "tBodyGyro-STDDEV-Y"            "tBodyGyro-STDDEV-Z"            "tBodyGyroJerk-MEAN-X"         
[26] "tBodyGyroJerk-MEAN-Y"          "tBodyGyroJerk-MEAN-Z"          "tBodyGyroJerk-STDDEV-X"        "tBodyGyroJerk-STDDEV-Y"        "tBodyGyroJerk-STDDEV-Z"       
[31] "tBodyAccMag-MEAN"              "tBodyAccMag-STDDEV"            "tGravityAccMag-MEAN"           "tGravityAccMag-STDDEV"         "tBodyAccJerkMag-MEAN"         
[36] "tBodyAccJerkMag-STDDEV"        "tBodyGyroMag-MEAN"             "tBodyGyroMag-STDDEV"           "tBodyGyroJerkMag-MEAN"         "tBodyGyroJerkMag-STDDEV"      
[41] "fBodyAcc-MEAN-X"               "fBodyAcc-MEAN-Y"               "fBodyAcc-MEAN-Z"               "fBodyAcc-STDDEV-X"             "fBodyAcc-STDDEV-Y"            
[46] "fBodyAcc-STDDEV-Z"             "fBodyAcc-MEANFreq-X"           "fBodyAcc-MEANFreq-Y"           "fBodyAcc-MEANFreq-Z"           "fBodyAccJerk-MEAN-X"          
[51] "fBodyAccJerk-MEAN-Y"           "fBodyAccJerk-MEAN-Z"           "fBodyAccJerk-STDDEV-X"         "fBodyAccJerk-STDDEV-Y"         "fBodyAccJerk-STDDEV-Z"        
[56] "fBodyAccJerk-MEANFreq-X"       "fBodyAccJerk-MEANFreq-Y"       "fBodyAccJerk-MEANFreq-Z"       "fBodyGyro-MEAN-X"              "fBodyGyro-MEAN-Y"             
[61] "fBodyGyro-MEAN-Z"              "fBodyGyro-STDDEV-X"            "fBodyGyro-STDDEV-Y"            "fBodyGyro-STDDEV-Z"            "fBodyGyro-MEANFreq-X"         
[66] "fBodyGyro-MEANFreq-Y"          "fBodyGyro-MEANFreq-Z"          "fBodyAccMag-MEAN"              "fBodyAccMag-STDDEV"            "fBodyAccMag-MEANFreq"         
[71] "fBodyBodyAccJerkMag-MEAN"      "fBodyBodyAccJerkMag-STDDEV"    "fBodyBodyAccJerkMag-MEANFreq"  "fBodyBodyGyroMag-MEAN"         "fBodyBodyGyroMag-STDDEV"      
[76] "fBodyBodyGyroMag-MEANFreq"     "fBodyBodyGyroJerkMag-MEAN"     "fBodyBodyGyroJerkMag-STDDEV"   "fBodyBodyGyroJerkMag-MEANFreq"
