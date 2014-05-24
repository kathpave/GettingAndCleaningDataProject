# Code Book 
## Getting and Cleaning Data Project
### 5/24/2014 Kathy Pavelock
#### This code book describes the variables, the data, and any transformations or work performed to clean up the data for the "Getting and Cleaning Data� project.  The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Human Activity Recognition Using Smartphones Data Set"). 

## run_analysis.R
#### The run_analysis.R file is a R Programming script used to get in the Samsung data, clean the data, and prepare the two tidy data sets described below.  The following is a description of the variables used in the script.  See README.md for a description of how the script works.  

* activityLabels - used to relate the activity codes (integer) with a descriptive activity (character)
* allData - used to combine all the test and training data, subjects, and activities
* allLabels - used to combine the test and training data activities (integer) related to the readings
* allSubjects - used to combine the test and training data subjects (integer) related to the readings
* colData - used to hold all the readings column names
* subsetData - used to hold the mean and standard deviation values for all the observations.
* tempGroupData - used to hold the grouped subject/activity and averaged readings
* testLabels - used to hold the test activity code numbers (1 to 6) related to the readings
* testSubjects - used to hold the test data subjects (integer) related to the readings
* testTable - used to hold the test readings
* trainLabels - used to hold the train activity code numbers (1 to 6) related to the readings
* trainSubjects - used to hold the train data subjects (integer) related to the readings
* trainTable - used to hold the train readings
* extractColumns - numeric list of numbers identifying which columns to extract for the mean and standard deviation values
* file1 - character string used to identify the test data file that will be read in 
* file2 - character string used to identify the train data file that will be read in 

## Samsung_Activity_mean_std.txt
#### The Samsung_Activity_mean_std.txt file is a data table consisting of 10299 observations of 81 variables

  * "1" "subject"  -  an integer from 1 to 30 representing the subject of the activity
  * "2" "Activity.Label"  - a character string representing the activity being performed by the subject.  The activity is one of the following:  
  > WALKING  
  > WALKING_UPSTAIRS  
  > WALKING_DOWNSTAIRS  
  > SITTING  
  > STANDING  
  > LAYING  
  
#### The remaining data items are readings of the waist-mounted smartphone with embedded inertial sensors and are Multivariate, Time-Series values (numeric class).  The data are only those readings representing a mean or a standard deviation:  
  
  * "3" "tBodyAcc.mean...X"
  * "4" "tBodyAcc.mean...Y"
  * "5" "tBodyAcc.mean...Z"
  * "6" "tGravityAcc.mean...X"
  * "7" "tGravityAcc.mean...Y"
  * "8" "tGravityAcc.mean...Z"
  * "9" "tBodyAccJerk.mean...X"
  * "10" "tBodyAccJerk.mean...Y"
  * "11" "tBodyAccJerk.mean...Z"
  * "12" "tBodyGyro.mean...X"
  * "13" "tBodyGyro.mean...Y"
  * "14" "tBodyGyro.mean...Z"
  * "15" "tBodyGyroJerk.mean...X"
  * "16" "tBodyGyroJerk.mean...Y"
  * "17" "tBodyGyroJerk.mean...Z"
  * "18" "tBodyAccMag.mean.."
  * "19" "tGravityAccMag.mean.."
  * "20" "tBodyAccJerkMag.mean.."
  * "21" "tBodyGyroMag.mean.."
  * "22" "tBodyGyroJerkMag.mean.."
  * "23" "fBodyAcc.mean...X"
  * "24" "fBodyAcc.mean...Y"
  * "25" "fBodyAcc.mean...Z"
  * "26" "fBodyAcc.meanFreq...X"
  * "27" "fBodyAcc.meanFreq...Y"
  * "28" "fBodyAcc.meanFreq...Z"
  * "29" "fBodyAccJerk.mean...X"
  * "30" "fBodyAccJerk.mean...Y"
  * "31" "fBodyAccJerk.mean...Z"
  * "32" "fBodyAccJerk.meanFreq...X"
  * "33" "fBodyAccJerk.meanFreq...Y"
  * "34" "fBodyAccJerk.meanFreq...Z"
  * "35" "fBodyGyro.mean...X"
  * "36" "fBodyGyro.mean...Y"
  * "37" "fBodyGyro.mean...Z"
  * "38" "fBodyGyro.meanFreq...X"
  * "39" "fBodyGyro.meanFreq...Y"
  * "40" "fBodyGyro.meanFreq...Z"
  * "41" "fBodyAccMag.mean.."
  * "42" "fBodyAccMag.meanFreq.."
  * "43" "fBodyBodyAccJerkMag.mean.."
  * "44" "fBodyBodyAccJerkMag.meanFreq.."
  * "45" "fBodyBodyGyroMag.mean.."
  * "46" "fBodyBodyGyroMag.meanFreq.."
  * "47" "fBodyBodyGyroJerkMag.mean.."
  * "48" "fBodyBodyGyroJerkMag.meanFreq.."
  * "49" "tBodyAcc.std...X"
  * "50" "tBodyAcc.std...Y"
  * "51" "tBodyAcc.std...Z"
  * "52" "tGravityAcc.std...X"
  * "53" "tGravityAcc.std...Y"
  * "54" "tGravityAcc.std...Z"
  * "55" "tBodyAccJerk.std...X"
  * "56" "tBodyAccJerk.std...Y"
  * "57" "tBodyAccJerk.std...Z"
  * "58" "tBodyGyro.std...X"
  * "59" "tBodyGyro.std...Y"
  * "60" "tBodyGyro.std...Z"
  * "61" "tBodyGyroJerk.std...X"
  * "62" "tBodyGyroJerk.std...Y"
  * "63" "tBodyGyroJerk.std...Z"
  * "64" "tBodyAccMag.std.."
  * "65" "tGravityAccMag.std.."
  * "66" "tBodyAccJerkMag.std.."
  * "67" "tBodyGyroMag.std.."
  * "68" "tBodyGyroJerkMag.std.."
  * "69" "fBodyAcc.std...X"
  * "70" "fBodyAcc.std...Y"
  * "71" "fBodyAcc.std...Z"
  * "72" "fBodyAccJerk.std...X"
  * "73" "fBodyAccJerk.std...Y"
  * "74" "fBodyAccJerk.std...Z"
  * "75" "fBodyGyro.std...X"
  * "76" "fBodyGyro.std...Y"
  * "77" "fBodyGyro.std...Z"
  * "78" "fBodyAccMag.std.."
  * "79" "fBodyBodyAccJerkMag.std.."
  * "80" "fBodyBodyGyroMag.std.."
  * "81" "fBodyBodyGyroJerkMag.std.."

## Samsung_Subject_Activity_avg.txt
#### The Samsung_Subject_Activity_avg.txt file is a data table consisting of 180 observations of 563 variables

  * "1" "subject" -  an integer from 1 to 30 representing the subject of the activity
  * "2" "activity.label" - - a character string representing the activity being performed by the subject.  The activity is one of the following:  
  > WALKING  
  > WALKING_UPSTAIRS  
  > WALKING_DOWNSTAIRS  
  > SITTING  
  > STANDING  
  > LAYING  
  
#### The remaining data items are readings of the waist-mounted smartphone with embedded inertial sensors and are Multivariate, Time-Series values (numeric class).  The data are only those readings representing the mean (average) of the values for the group of subject and activity.

  * "3" "Avg_tBodyAcc.mean...X"
  * "4" "Avg_tBodyAcc.mean...Y"
  * "5" "Avg_tBodyAcc.mean...Z"
  * "6" "Avg_tBodyAcc.std...X"
  * "7" "Avg_tBodyAcc.std...Y"
  * "8" "Avg_tBodyAcc.std...Z"
  * "9" "Avg_tBodyAcc.mad...X"
  * "10" "Avg_tBodyAcc.mad...Y"
  * "11" "Avg_tBodyAcc.mad...Z"
  * "12" "Avg_tBodyAcc.max...X"
  * "13" "Avg_tBodyAcc.max...Y"
  * "14" "Avg_tBodyAcc.max...Z"
  * "15" "Avg_tBodyAcc.min...X"
  * "16" "Avg_tBodyAcc.min...Y"
  * "17" "Avg_tBodyAcc.min...Z"
  * "18" "Avg_tBodyAcc.sma.."
  * "19" "Avg_tBodyAcc.energy...X"
  * "20" "Avg_tBodyAcc.energy...Y"
  * "21" "Avg_tBodyAcc.energy...Z"
  * "22" "Avg_tBodyAcc.iqr...X"
  * "23" "Avg_tBodyAcc.iqr...Y"
  * "24" "Avg_tBodyAcc.iqr...Z"
  * "25" "Avg_tBodyAcc.entropy...X"
  * "26" "Avg_tBodyAcc.entropy...Y"
  * "27" "Avg_tBodyAcc.entropy...Z"
  * "28" "Avg_tBodyAcc.arCoeff...X.1"
  * "29" "Avg_tBodyAcc.arCoeff...X.2"
  * "30" "Avg_tBodyAcc.arCoeff...X.3"
  * "31" "Avg_tBodyAcc.arCoeff...X.4"
  * "32" "Avg_tBodyAcc.arCoeff...Y.1"
  * "33" "Avg_tBodyAcc.arCoeff...Y.2"
  * "34" "Avg_tBodyAcc.arCoeff...Y.3"
  * "35" "Avg_tBodyAcc.arCoeff...Y.4"
  * "36" "Avg_tBodyAcc.arCoeff...Z.1"
  * "37" "Avg_tBodyAcc.arCoeff...Z.2"
  * "38" "Avg_tBodyAcc.arCoeff...Z.3"
  * "39" "Avg_tBodyAcc.arCoeff...Z.4"
  * "40" "Avg_tBodyAcc.correlation...X.Y"
  * "41" "Avg_tBodyAcc.correlation...X.Z"
  * "42" "Avg_tBodyAcc.correlation...Y.Z"
  * "43" "Avg_tGravityAcc.mean...X"
  * "44" "Avg_tGravityAcc.mean...Y"
  * "45" "Avg_tGravityAcc.mean...Z"
  * "46" "Avg_tGravityAcc.std...X"
  * "47" "Avg_tGravityAcc.std...Y"
  * "48" "Avg_tGravityAcc.std...Z"
  * "49" "Avg_tGravityAcc.mad...X"
  * "50" "Avg_tGravityAcc.mad...Y"
  * "51" "Avg_tGravityAcc.mad...Z"
  * "52" "Avg_tGravityAcc.max...X"
  * "53" "Avg_tGravityAcc.max...Y"
  * "54" "Avg_tGravityAcc.max...Z"
  * "55" "Avg_tGravityAcc.min...X"
  * "56" "Avg_tGravityAcc.min...Y"
  * "57" "Avg_tGravityAcc.min...Z"
  * "58" "Avg_tGravityAcc.sma.."
  * "59" "Avg_tGravityAcc.energy...X"
  * "60" "Avg_tGravityAcc.energy...Y"
  * "61" "Avg_tGravityAcc.energy...Z"
  * "62" "Avg_tGravityAcc.iqr...X"
  * "63" "Avg_tGravityAcc.iqr...Y"
  * "64" "Avg_tGravityAcc.iqr...Z"
  * "65" "Avg_tGravityAcc.entropy...X"
  * "66" "Avg_tGravityAcc.entropy...Y"
  * "67" "Avg_tGravityAcc.entropy...Z"
  * "68" "Avg_tGravityAcc.arCoeff...X.1"
  * "69" "Avg_tGravityAcc.arCoeff...X.2"
  * "70" "Avg_tGravityAcc.arCoeff...X.3"
  * "71" "Avg_tGravityAcc.arCoeff...X.4"
  * "72" "Avg_tGravityAcc.arCoeff...Y.1"
  * "73" "Avg_tGravityAcc.arCoeff...Y.2"
  * "74" "Avg_tGravityAcc.arCoeff...Y.3"
  * "75" "Avg_tGravityAcc.arCoeff...Y.4"
  * "76" "Avg_tGravityAcc.arCoeff...Z.1"
  * "77" "Avg_tGravityAcc.arCoeff...Z.2"
  * "78" "Avg_tGravityAcc.arCoeff...Z.3"
  * "79" "Avg_tGravityAcc.arCoeff...Z.4"
  * "80" "Avg_tGravityAcc.correlation...X.Y"
  * "81" "Avg_tGravityAcc.correlation...X.Z"
  * "82" "Avg_tGravityAcc.correlation...Y.Z"
  * "83" "Avg_tBodyAccJerk.mean...X"
  * "84" "Avg_tBodyAccJerk.mean...Y"
  * "85" "Avg_tBodyAccJerk.mean...Z"
  * "86" "Avg_tBodyAccJerk.std...X"
  * "87" "Avg_tBodyAccJerk.std...Y"
  * "88" "Avg_tBodyAccJerk.std...Z"
  * "89" "Avg_tBodyAccJerk.mad...X"
  * "90" "Avg_tBodyAccJerk.mad...Y"
  * "91" "Avg_tBodyAccJerk.mad...Z"
  * "92" "Avg_tBodyAccJerk.max...X"
  * "93" "Avg_tBodyAccJerk.max...Y"
  * "94" "Avg_tBodyAccJerk.max...Z"
  * "95" "Avg_tBodyAccJerk.min...X"
  * "96" "Avg_tBodyAccJerk.min...Y"
  * "97" "Avg_tBodyAccJerk.min...Z"
  * "98" "Avg_tBodyAccJerk.sma.."
  * "99" "Avg_tBodyAccJerk.energy...X"
  * "100" "Avg_tBodyAccJerk.energy...Y"
  * "101" "Avg_tBodyAccJerk.energy...Z"
  * "102" "Avg_tBodyAccJerk.iqr...X"
  * "103" "Avg_tBodyAccJerk.iqr...Y"
  * "104" "Avg_tBodyAccJerk.iqr...Z"
  * "105" "Avg_tBodyAccJerk.entropy...X"
  * "106" "Avg_tBodyAccJerk.entropy...Y"
  * "107" "Avg_tBodyAccJerk.entropy...Z"
  * "108" "Avg_tBodyAccJerk.arCoeff...X.1"
  * "109" "Avg_tBodyAccJerk.arCoeff...X.2"
  * "110" "Avg_tBodyAccJerk.arCoeff...X.3"
  * "111" "Avg_tBodyAccJerk.arCoeff...X.4"
  * "112" "Avg_tBodyAccJerk.arCoeff...Y.1"
  * "113" "Avg_tBodyAccJerk.arCoeff...Y.2"
  * "114" "Avg_tBodyAccJerk.arCoeff...Y.3"
  * "115" "Avg_tBodyAccJerk.arCoeff...Y.4"
  * "116" "Avg_tBodyAccJerk.arCoeff...Z.1"
  * "117" "Avg_tBodyAccJerk.arCoeff...Z.2"
  * "118" "Avg_tBodyAccJerk.arCoeff...Z.3"
  * "119" "Avg_tBodyAccJerk.arCoeff...Z.4"
  * "120" "Avg_tBodyAccJerk.correlation...X.Y"
  * "121" "Avg_tBodyAccJerk.correlation...X.Z"
  * "122" "Avg_tBodyAccJerk.correlation...Y.Z"
  * "123" "Avg_tBodyGyro.mean...X"
  * "124" "Avg_tBodyGyro.mean...Y"
  * "125" "Avg_tBodyGyro.mean...Z"
  * "126" "Avg_tBodyGyro.std...X"
  * "127" "Avg_tBodyGyro.std...Y"
  * "128" "Avg_tBodyGyro.std...Z"
  * "129" "Avg_tBodyGyro.mad...X"
  * "130" "Avg_tBodyGyro.mad...Y"
  * "131" "Avg_tBodyGyro.mad...Z"
  * "132" "Avg_tBodyGyro.max...X"
  * "133" "Avg_tBodyGyro.max...Y"
  * "134" "Avg_tBodyGyro.max...Z"
  * "135" "Avg_tBodyGyro.min...X"
  * "136" "Avg_tBodyGyro.min...Y"
  * "137" "Avg_tBodyGyro.min...Z"
  * "138" "Avg_tBodyGyro.sma.."
  * "139" "Avg_tBodyGyro.energy...X"
  * "140" "Avg_tBodyGyro.energy...Y"
  * "141" "Avg_tBodyGyro.energy...Z"
  * "142" "Avg_tBodyGyro.iqr...X"
  * "143" "Avg_tBodyGyro.iqr...Y"
  * "144" "Avg_tBodyGyro.iqr...Z"
  * "145" "Avg_tBodyGyro.entropy...X"
  * "146" "Avg_tBodyGyro.entropy...Y"
  * "147" "Avg_tBodyGyro.entropy...Z"
  * "148" "Avg_tBodyGyro.arCoeff...X.1"
  * "149" "Avg_tBodyGyro.arCoeff...X.2"
  * "150" "Avg_tBodyGyro.arCoeff...X.3"
  * "151" "Avg_tBodyGyro.arCoeff...X.4"
  * "152" "Avg_tBodyGyro.arCoeff...Y.1"
  * "153" "Avg_tBodyGyro.arCoeff...Y.2"
  * "154" "Avg_tBodyGyro.arCoeff...Y.3"
  * "155" "Avg_tBodyGyro.arCoeff...Y.4"
  * "156" "Avg_tBodyGyro.arCoeff...Z.1"
  * "157" "Avg_tBodyGyro.arCoeff...Z.2"
  * "158" "Avg_tBodyGyro.arCoeff...Z.3"
  * "159" "Avg_tBodyGyro.arCoeff...Z.4"
  * "160" "Avg_tBodyGyro.correlation...X.Y"
  * "161" "Avg_tBodyGyro.correlation...X.Z"
  * "162" "Avg_tBodyGyro.correlation...Y.Z"
  * "163" "Avg_tBodyGyroJerk.mean...X"
  * "164" "Avg_tBodyGyroJerk.mean...Y"
  * "165" "Avg_tBodyGyroJerk.mean...Z"
  * "166" "Avg_tBodyGyroJerk.std...X"
  * "167" "Avg_tBodyGyroJerk.std...Y"
  * "168" "Avg_tBodyGyroJerk.std...Z"
  * "169" "Avg_tBodyGyroJerk.mad...X"
  * "170" "Avg_tBodyGyroJerk.mad...Y"
  * "171" "Avg_tBodyGyroJerk.mad...Z"
  * "172" "Avg_tBodyGyroJerk.max...X"
  * "173" "Avg_tBodyGyroJerk.max...Y"
  * "174" "Avg_tBodyGyroJerk.max...Z"
  * "175" "Avg_tBodyGyroJerk.min...X"
  * "176" "Avg_tBodyGyroJerk.min...Y"
  * "177" "Avg_tBodyGyroJerk.min...Z"
  * "178" "Avg_tBodyGyroJerk.sma.."
  * "179" "Avg_tBodyGyroJerk.energy...X"
  * "180" "Avg_tBodyGyroJerk.energy...Y"
  * "181" "Avg_tBodyGyroJerk.energy...Z"
  * "182" "Avg_tBodyGyroJerk.iqr...X"
  * "183" "Avg_tBodyGyroJerk.iqr...Y"
  * "184" "Avg_tBodyGyroJerk.iqr...Z"
  * "185" "Avg_tBodyGyroJerk.entropy...X"
  * "186" "Avg_tBodyGyroJerk.entropy...Y"
  * "187" "Avg_tBodyGyroJerk.entropy...Z"
  * "188" "Avg_tBodyGyroJerk.arCoeff...X.1"
  * "189" "Avg_tBodyGyroJerk.arCoeff...X.2"
  * "190" "Avg_tBodyGyroJerk.arCoeff...X.3"
  * "191" "Avg_tBodyGyroJerk.arCoeff...X.4"
  * "192" "Avg_tBodyGyroJerk.arCoeff...Y.1"
  * "193" "Avg_tBodyGyroJerk.arCoeff...Y.2"
  * "194" "Avg_tBodyGyroJerk.arCoeff...Y.3"
  * "195" "Avg_tBodyGyroJerk.arCoeff...Y.4"
  * "196" "Avg_tBodyGyroJerk.arCoeff...Z.1"
  * "197" "Avg_tBodyGyroJerk.arCoeff...Z.2"
  * "198" "Avg_tBodyGyroJerk.arCoeff...Z.3"
  * "199" "Avg_tBodyGyroJerk.arCoeff...Z.4"
  * "200" "Avg_tBodyGyroJerk.correlation...X.Y"
  * "201" "Avg_tBodyGyroJerk.correlation...X.Z"
  * "202" "Avg_tBodyGyroJerk.correlation...Y.Z"
  * "203" "Avg_tBodyAccMag.mean.."
  * "204" "Avg_tBodyAccMag.std.."
  * "205" "Avg_tBodyAccMag.mad.."
  * "206" "Avg_tBodyAccMag.max.."
  * "207" "Avg_tBodyAccMag.min.."
  * "208" "Avg_tBodyAccMag.sma.."
  * "209" "Avg_tBodyAccMag.energy.."
  * "210" "Avg_tBodyAccMag.iqr.."
  * "211" "Avg_tBodyAccMag.entropy.."
  * "212" "Avg_tBodyAccMag.arCoeff..1"
  * "213" "Avg_tBodyAccMag.arCoeff..2"
  * "214" "Avg_tBodyAccMag.arCoeff..3"
  * "215" "Avg_tBodyAccMag.arCoeff..4"
  * "216" "Avg_tGravityAccMag.mean.."
  * "217" "Avg_tGravityAccMag.std.."
  * "218" "Avg_tGravityAccMag.mad.."
  * "219" "Avg_tGravityAccMag.max.."
  * "220" "Avg_tGravityAccMag.min.."
  * "221" "Avg_tGravityAccMag.sma.."
  * "222" "Avg_tGravityAccMag.energy.."
  * "223" "Avg_tGravityAccMag.iqr.."
  * "224" "Avg_tGravityAccMag.entropy.."
  * "225" "Avg_tGravityAccMag.arCoeff..1"
  * "226" "Avg_tGravityAccMag.arCoeff..2"
  * "227" "Avg_tGravityAccMag.arCoeff..3"
  * "228" "Avg_tGravityAccMag.arCoeff..4"
  * "229" "Avg_tBodyAccJerkMag.mean.."
  * "230" "Avg_tBodyAccJerkMag.std.."
  * "231" "Avg_tBodyAccJerkMag.mad.."
  * "232" "Avg_tBodyAccJerkMag.max.."
  * "233" "Avg_tBodyAccJerkMag.min.."
  * "234" "Avg_tBodyAccJerkMag.sma.."
  * "235" "Avg_tBodyAccJerkMag.energy.."
  * "236" "Avg_tBodyAccJerkMag.iqr.."
  * "237" "Avg_tBodyAccJerkMag.entropy.."
  * "238" "Avg_tBodyAccJerkMag.arCoeff..1"
  * "239" "Avg_tBodyAccJerkMag.arCoeff..2"
  * "240" "Avg_tBodyAccJerkMag.arCoeff..3"
  * "241" "Avg_tBodyAccJerkMag.arCoeff..4"
  * "242" "Avg_tBodyGyroMag.mean.."
  * "243" "Avg_tBodyGyroMag.std.."
  * "244" "Avg_tBodyGyroMag.mad.."
  * "245" "Avg_tBodyGyroMag.max.."
  * "246" "Avg_tBodyGyroMag.min.."
  * "247" "Avg_tBodyGyroMag.sma.."
  * "248" "Avg_tBodyGyroMag.energy.."
  * "249" "Avg_tBodyGyroMag.iqr.."
  * "250" "Avg_tBodyGyroMag.entropy.."
  * "251" "Avg_tBodyGyroMag.arCoeff..1"
  * "252" "Avg_tBodyGyroMag.arCoeff..2"
  * "253" "Avg_tBodyGyroMag.arCoeff..3"
  * "254" "Avg_tBodyGyroMag.arCoeff..4"
  * "255" "Avg_tBodyGyroJerkMag.mean.."
  * "256" "Avg_tBodyGyroJerkMag.std.."
  * "257" "Avg_tBodyGyroJerkMag.mad.."
  * "258" "Avg_tBodyGyroJerkMag.max.."
  * "259" "Avg_tBodyGyroJerkMag.min.."
  * "260" "Avg_tBodyGyroJerkMag.sma.."
  * "261" "Avg_tBodyGyroJerkMag.energy.."
  * "262" "Avg_tBodyGyroJerkMag.iqr.."
  * "263" "Avg_tBodyGyroJerkMag.entropy.."
  * "264" "Avg_tBodyGyroJerkMag.arCoeff..1"
  * "265" "Avg_tBodyGyroJerkMag.arCoeff..2"
  * "266" "Avg_tBodyGyroJerkMag.arCoeff..3"
  * "267" "Avg_tBodyGyroJerkMag.arCoeff..4"
  * "268" "Avg_fBodyAcc.mean...X"
  * "269" "Avg_fBodyAcc.mean...Y"
  * "270" "Avg_fBodyAcc.mean...Z"
  * "271" "Avg_fBodyAcc.std...X"
  * "272" "Avg_fBodyAcc.std...Y"
  * "273" "Avg_fBodyAcc.std...Z"
  * "274" "Avg_fBodyAcc.mad...X"
  * "275" "Avg_fBodyAcc.mad...Y"
  * "276" "Avg_fBodyAcc.mad...Z"
  * "277" "Avg_fBodyAcc.max...X"
  * "278" "Avg_fBodyAcc.max...Y"
  * "279" "Avg_fBodyAcc.max...Z"
  * "280" "Avg_fBodyAcc.min...X"
  * "281" "Avg_fBodyAcc.min...Y"
  * "282" "Avg_fBodyAcc.min...Z"
  * "283" "Avg_fBodyAcc.sma.."
  * "284" "Avg_fBodyAcc.energy...X"
  * "285" "Avg_fBodyAcc.energy...Y"
  * "286" "Avg_fBodyAcc.energy...Z"
  * "287" "Avg_fBodyAcc.iqr...X"
  * "288" "Avg_fBodyAcc.iqr...Y"
  * "289" "Avg_fBodyAcc.iqr...Z"
  * "290" "Avg_fBodyAcc.entropy...X"
  * "291" "Avg_fBodyAcc.entropy...Y"
  * "292" "Avg_fBodyAcc.entropy...Z"
  * "293" "Avg_fBodyAcc.maxInds.X"
  * "294" "Avg_fBodyAcc.maxInds.Y"
  * "295" "Avg_fBodyAcc.maxInds.Z"
  * "296" "Avg_fBodyAcc.meanFreq...X"
  * "297" "Avg_fBodyAcc.meanFreq...Y"
  * "298" "Avg_fBodyAcc.meanFreq...Z"
  * "299" "Avg_fBodyAcc.skewness...X"
  * "300" "Avg_fBodyAcc.kurtosis...X"
  * "301" "Avg_fBodyAcc.skewness...Y"
  * "302" "Avg_fBodyAcc.kurtosis...Y"
  * "303" "Avg_fBodyAcc.skewness...Z"
  * "304" "Avg_fBodyAcc.kurtosis...Z"
  * "305" "Avg_fBodyAcc.bandsEnergy...1.8"
  * "306" "Avg_fBodyAcc.bandsEnergy...9.16"
  * "307" "Avg_fBodyAcc.bandsEnergy...17.24"
  * "308" "Avg_fBodyAcc.bandsEnergy...25.32"
  * "309" "Avg_fBodyAcc.bandsEnergy...33.40"
  * "310" "Avg_fBodyAcc.bandsEnergy...41.48"
  * "311" "Avg_fBodyAcc.bandsEnergy...49.56"
  * "312" "Avg_fBodyAcc.bandsEnergy...57.64"
  * "313" "Avg_fBodyAcc.bandsEnergy...1.16"
  * "314" "Avg_fBodyAcc.bandsEnergy...17.32"
  * "315" "Avg_fBodyAcc.bandsEnergy...33.48"
  * "316" "Avg_fBodyAcc.bandsEnergy...49.64"
  * "317" "Avg_fBodyAcc.bandsEnergy...1.24"
  * "318" "Avg_fBodyAcc.bandsEnergy...25.48"
  * "319" "Avg_fBodyAcc.bandsEnergy...1.8.1"
  * "320" "Avg_fBodyAcc.bandsEnergy...9.16.1"
  * "321" "Avg_fBodyAcc.bandsEnergy...17.24.1"
  * "322" "Avg_fBodyAcc.bandsEnergy...25.32.1"
  * "323" "Avg_fBodyAcc.bandsEnergy...33.40.1"
  * "324" "Avg_fBodyAcc.bandsEnergy...41.48.1"
  * "325" "Avg_fBodyAcc.bandsEnergy...49.56.1"
  * "326" "Avg_fBodyAcc.bandsEnergy...57.64.1"
  * "327" "Avg_fBodyAcc.bandsEnergy...1.16.1"
  * "328" "Avg_fBodyAcc.bandsEnergy...17.32.1"
  * "329" "Avg_fBodyAcc.bandsEnergy...33.48.1"
  * "330" "Avg_fBodyAcc.bandsEnergy...49.64.1"
  * "331" "Avg_fBodyAcc.bandsEnergy...1.24.1"
  * "332" "Avg_fBodyAcc.bandsEnergy...25.48.1"
  * "333" "Avg_fBodyAcc.bandsEnergy...1.8.2"
  * "334" "Avg_fBodyAcc.bandsEnergy...9.16.2"
  * "335" "Avg_fBodyAcc.bandsEnergy...17.24.2"
  * "336" "Avg_fBodyAcc.bandsEnergy...25.32.2"
  * "337" "Avg_fBodyAcc.bandsEnergy...33.40.2"
  * "338" "Avg_fBodyAcc.bandsEnergy...41.48.2"
  * "339" "Avg_fBodyAcc.bandsEnergy...49.56.2"
  * "340" "Avg_fBodyAcc.bandsEnergy...57.64.2"
  * "341" "Avg_fBodyAcc.bandsEnergy...1.16.2"
  * "342" "Avg_fBodyAcc.bandsEnergy...17.32.2"
  * "343" "Avg_fBodyAcc.bandsEnergy...33.48.2"
  * "344" "Avg_fBodyAcc.bandsEnergy...49.64.2"
  * "345" "Avg_fBodyAcc.bandsEnergy...1.24.2"
  * "346" "Avg_fBodyAcc.bandsEnergy...25.48.2"
  * "347" "Avg_fBodyAccJerk.mean...X"
  * "348" "Avg_fBodyAccJerk.mean...Y"
  * "349" "Avg_fBodyAccJerk.mean...Z"
  * "350" "Avg_fBodyAccJerk.std...X"
  * "351" "Avg_fBodyAccJerk.std...Y"
  * "352" "Avg_fBodyAccJerk.std...Z"
  * "353" "Avg_fBodyAccJerk.mad...X"
  * "354" "Avg_fBodyAccJerk.mad...Y"
  * "355" "Avg_fBodyAccJerk.mad...Z"
  * "356" "Avg_fBodyAccJerk.max...X"
  * "357" "Avg_fBodyAccJerk.max...Y"
  * "358" "Avg_fBodyAccJerk.max...Z"
  * "359" "Avg_fBodyAccJerk.min...X"
  * "360" "Avg_fBodyAccJerk.min...Y"
  * "361" "Avg_fBodyAccJerk.min...Z"
  * "362" "Avg_fBodyAccJerk.sma.."
  * "363" "Avg_fBodyAccJerk.energy...X"
  * "364" "Avg_fBodyAccJerk.energy...Y"
  * "365" "Avg_fBodyAccJerk.energy...Z"
  * "366" "Avg_fBodyAccJerk.iqr...X"
  * "367" "Avg_fBodyAccJerk.iqr...Y"
  * "368" "Avg_fBodyAccJerk.iqr...Z"
  * "369" "Avg_fBodyAccJerk.entropy...X"
  * "370" "Avg_fBodyAccJerk.entropy...Y"
  * "371" "Avg_fBodyAccJerk.entropy...Z"
  * "372" "Avg_fBodyAccJerk.maxInds.X"
  * "373" "Avg_fBodyAccJerk.maxInds.Y"
  * "374" "Avg_fBodyAccJerk.maxInds.Z"
  * "375" "Avg_fBodyAccJerk.meanFreq...X"
  * "376" "Avg_fBodyAccJerk.meanFreq...Y"
  * "377" "Avg_fBodyAccJerk.meanFreq...Z"
  * "378" "Avg_fBodyAccJerk.skewness...X"
  * "379" "Avg_fBodyAccJerk.kurtosis...X"
  * "380" "Avg_fBodyAccJerk.skewness...Y"
  * "381" "Avg_fBodyAccJerk.kurtosis...Y"
  * "382" "Avg_fBodyAccJerk.skewness...Z"
  * "383" "Avg_fBodyAccJerk.kurtosis...Z"
  * "384" "Avg_fBodyAccJerk.bandsEnergy...1.8"
  * "385" "Avg_fBodyAccJerk.bandsEnergy...9.16"
  * "386" "Avg_fBodyAccJerk.bandsEnergy...17.24"
  * "387" "Avg_fBodyAccJerk.bandsEnergy...25.32"
  * "388" "Avg_fBodyAccJerk.bandsEnergy...33.40"
  * "389" "Avg_fBodyAccJerk.bandsEnergy...41.48"
  * "390" "Avg_fBodyAccJerk.bandsEnergy...49.56"
  * "391" "Avg_fBodyAccJerk.bandsEnergy...57.64"
  * "392" "Avg_fBodyAccJerk.bandsEnergy...1.16"
  * "393" "Avg_fBodyAccJerk.bandsEnergy...17.32"
  * "394" "Avg_fBodyAccJerk.bandsEnergy...33.48"
  * "395" "Avg_fBodyAccJerk.bandsEnergy...49.64"
  * "396" "Avg_fBodyAccJerk.bandsEnergy...1.24"
  * "397" "Avg_fBodyAccJerk.bandsEnergy...25.48"
  * "398" "Avg_fBodyAccJerk.bandsEnergy...1.8.1"
  * "399" "Avg_fBodyAccJerk.bandsEnergy...9.16.1"
  * "400" "Avg_fBodyAccJerk.bandsEnergy...17.24.1"
  * "401" "Avg_fBodyAccJerk.bandsEnergy...25.32.1"
  * "402" "Avg_fBodyAccJerk.bandsEnergy...33.40.1"
  * "403" "Avg_fBodyAccJerk.bandsEnergy...41.48.1"
  * "404" "Avg_fBodyAccJerk.bandsEnergy...49.56.1"
  * "405" "Avg_fBodyAccJerk.bandsEnergy...57.64.1"
  * "406" "Avg_fBodyAccJerk.bandsEnergy...1.16.1"
  * "407" "Avg_fBodyAccJerk.bandsEnergy...17.32.1"
  * "408" "Avg_fBodyAccJerk.bandsEnergy...33.48.1"
  * "409" "Avg_fBodyAccJerk.bandsEnergy...49.64.1"
  * "410" "Avg_fBodyAccJerk.bandsEnergy...1.24.1"
  * "411" "Avg_fBodyAccJerk.bandsEnergy...25.48.1"
  * "412" "Avg_fBodyAccJerk.bandsEnergy...1.8.2"
  * "413" "Avg_fBodyAccJerk.bandsEnergy...9.16.2"
  * "414" "Avg_fBodyAccJerk.bandsEnergy...17.24.2"
  * "415" "Avg_fBodyAccJerk.bandsEnergy...25.32.2"
  * "416" "Avg_fBodyAccJerk.bandsEnergy...33.40.2"
  * "417" "Avg_fBodyAccJerk.bandsEnergy...41.48.2"
  * "418" "Avg_fBodyAccJerk.bandsEnergy...49.56.2"
  * "419" "Avg_fBodyAccJerk.bandsEnergy...57.64.2"
  * "420" "Avg_fBodyAccJerk.bandsEnergy...1.16.2"
  * "421" "Avg_fBodyAccJerk.bandsEnergy...17.32.2"
  * "422" "Avg_fBodyAccJerk.bandsEnergy...33.48.2"
  * "423" "Avg_fBodyAccJerk.bandsEnergy...49.64.2"
  * "424" "Avg_fBodyAccJerk.bandsEnergy...1.24.2"
  * "425" "Avg_fBodyAccJerk.bandsEnergy...25.48.2"
  * "426" "Avg_fBodyGyro.mean...X"
  * "427" "Avg_fBodyGyro.mean...Y"
  * "428" "Avg_fBodyGyro.mean...Z"
  * "429" "Avg_fBodyGyro.std...X"
  * "430" "Avg_fBodyGyro.std...Y"
  * "431" "Avg_fBodyGyro.std...Z"
  * "432" "Avg_fBodyGyro.mad...X"
  * "433" "Avg_fBodyGyro.mad...Y"
  * "434" "Avg_fBodyGyro.mad...Z"
  * "435" "Avg_fBodyGyro.max...X"
  * "436" "Avg_fBodyGyro.max...Y"
  * "437" "Avg_fBodyGyro.max...Z"
  * "438" "Avg_fBodyGyro.min...X"
  * "439" "Avg_fBodyGyro.min...Y"
  * "440" "Avg_fBodyGyro.min...Z"
  * "441" "Avg_fBodyGyro.sma.."
  * "442" "Avg_fBodyGyro.energy...X"
  * "443" "Avg_fBodyGyro.energy...Y"
  * "444" "Avg_fBodyGyro.energy...Z"
  * "445" "Avg_fBodyGyro.iqr...X"
  * "446" "Avg_fBodyGyro.iqr...Y"
  * "447" "Avg_fBodyGyro.iqr...Z"
  * "448" "Avg_fBodyGyro.entropy...X"
  * "449" "Avg_fBodyGyro.entropy...Y"
  * "450" "Avg_fBodyGyro.entropy...Z"
  * "451" "Avg_fBodyGyro.maxInds.X"
  * "452" "Avg_fBodyGyro.maxInds.Y"
  * "453" "Avg_fBodyGyro.maxInds.Z"
  * "454" "Avg_fBodyGyro.meanFreq...X"
  * "455" "Avg_fBodyGyro.meanFreq...Y"
  * "456" "Avg_fBodyGyro.meanFreq...Z"
  * "457" "Avg_fBodyGyro.skewness...X"
  * "458" "Avg_fBodyGyro.kurtosis...X"
  * "459" "Avg_fBodyGyro.skewness...Y"
  * "460" "Avg_fBodyGyro.kurtosis...Y"
  * "461" "Avg_fBodyGyro.skewness...Z"
  * "462" "Avg_fBodyGyro.kurtosis...Z"
  * "463" "Avg_fBodyGyro.bandsEnergy...1.8"
  * "464" "Avg_fBodyGyro.bandsEnergy...9.16"
  * "465" "Avg_fBodyGyro.bandsEnergy...17.24"
  * "466" "Avg_fBodyGyro.bandsEnergy...25.32"
  * "467" "Avg_fBodyGyro.bandsEnergy...33.40"
  * "468" "Avg_fBodyGyro.bandsEnergy...41.48"
  * "469" "Avg_fBodyGyro.bandsEnergy...49.56"
  * "470" "Avg_fBodyGyro.bandsEnergy...57.64"
  * "471" "Avg_fBodyGyro.bandsEnergy...1.16"
  * "472" "Avg_fBodyGyro.bandsEnergy...17.32"
  * "473" "Avg_fBodyGyro.bandsEnergy...33.48"
  * "474" "Avg_fBodyGyro.bandsEnergy...49.64"
  * "475" "Avg_fBodyGyro.bandsEnergy...1.24"
  * "476" "Avg_fBodyGyro.bandsEnergy...25.48"
  * "477" "Avg_fBodyGyro.bandsEnergy...1.8.1"
  * "478" "Avg_fBodyGyro.bandsEnergy...9.16.1"
  * "479" "Avg_fBodyGyro.bandsEnergy...17.24.1"
  * "480" "Avg_fBodyGyro.bandsEnergy...25.32.1"
  * "481" "Avg_fBodyGyro.bandsEnergy...33.40.1"
  * "482" "Avg_fBodyGyro.bandsEnergy...41.48.1"
  * "483" "Avg_fBodyGyro.bandsEnergy...49.56.1"
  * "484" "Avg_fBodyGyro.bandsEnergy...57.64.1"
  * "485" "Avg_fBodyGyro.bandsEnergy...1.16.1"
  * "486" "Avg_fBodyGyro.bandsEnergy...17.32.1"
  * "487" "Avg_fBodyGyro.bandsEnergy...33.48.1"
  * "488" "Avg_fBodyGyro.bandsEnergy...49.64.1"
  * "489" "Avg_fBodyGyro.bandsEnergy...1.24.1"
  * "490" "Avg_fBodyGyro.bandsEnergy...25.48.1"
  * "491" "Avg_fBodyGyro.bandsEnergy...1.8.2"
  * "492" "Avg_fBodyGyro.bandsEnergy...9.16.2"
  * "493" "Avg_fBodyGyro.bandsEnergy...17.24.2"
  * "494" "Avg_fBodyGyro.bandsEnergy...25.32.2"
  * "495" "Avg_fBodyGyro.bandsEnergy...33.40.2"
  * "496" "Avg_fBodyGyro.bandsEnergy...41.48.2"
  * "497" "Avg_fBodyGyro.bandsEnergy...49.56.2"
  * "498" "Avg_fBodyGyro.bandsEnergy...57.64.2"
  * "499" "Avg_fBodyGyro.bandsEnergy...1.16.2"
  * "500" "Avg_fBodyGyro.bandsEnergy...17.32.2"
  * "501" "Avg_fBodyGyro.bandsEnergy...33.48.2"
  * "502" "Avg_fBodyGyro.bandsEnergy...49.64.2"
  * "503" "Avg_fBodyGyro.bandsEnergy...1.24.2"
  * "504" "Avg_fBodyGyro.bandsEnergy...25.48.2"
  * "505" "Avg_fBodyAccMag.mean.."
  * "506" "Avg_fBodyAccMag.std.."
  * "507" "Avg_fBodyAccMag.mad.."
  * "508" "Avg_fBodyAccMag.max.."
  * "509" "Avg_fBodyAccMag.min.."
  * "510" "Avg_fBodyAccMag.sma.."
  * "511" "Avg_fBodyAccMag.energy.."
  * "512" "Avg_fBodyAccMag.iqr.."
  * "513" "Avg_fBodyAccMag.entropy.."
  * "514" "Avg_fBodyAccMag.maxInds"
  * "515" "Avg_fBodyAccMag.meanFreq.."
  * "516" "Avg_fBodyAccMag.skewness.."
  * "517" "Avg_fBodyAccMag.kurtosis.."
  * "518" "Avg_fBodyBodyAccJerkMag.mean.."
  * "519" "Avg_fBodyBodyAccJerkMag.std.."
  * "520" "Avg_fBodyBodyAccJerkMag.mad.."
  * "521" "Avg_fBodyBodyAccJerkMag.max.."
  * "522" "Avg_fBodyBodyAccJerkMag.min.."
  * "523" "Avg_fBodyBodyAccJerkMag.sma.."
  * "524" "Avg_fBodyBodyAccJerkMag.energy.."
  * "525" "Avg_fBodyBodyAccJerkMag.iqr.."
  * "526" "Avg_fBodyBodyAccJerkMag.entropy.."
  * "527" "Avg_fBodyBodyAccJerkMag.maxInds"
  * "528" "Avg_fBodyBodyAccJerkMag.meanFreq.."
  * "529" "Avg_fBodyBodyAccJerkMag.skewness.."
  * "530" "Avg_fBodyBodyAccJerkMag.kurtosis.."
  * "531" "Avg_fBodyBodyGyroMag.mean.."
  * "532" "Avg_fBodyBodyGyroMag.std.."
  * "533" "Avg_fBodyBodyGyroMag.mad.."
  * "534" "Avg_fBodyBodyGyroMag.max.."
  * "535" "Avg_fBodyBodyGyroMag.min.."
  * "536" "Avg_fBodyBodyGyroMag.sma.."
  * "537" "Avg_fBodyBodyGyroMag.energy.."
  * "538" "Avg_fBodyBodyGyroMag.iqr.."
  * "539" "Avg_fBodyBodyGyroMag.entropy.."
  * "540" "Avg_fBodyBodyGyroMag.maxInds"
  * "541" "Avg_fBodyBodyGyroMag.meanFreq.."
  * "542" "Avg_fBodyBodyGyroMag.skewness.."
  * "543" "Avg_fBodyBodyGyroMag.kurtosis.."
  * "544" "Avg_fBodyBodyGyroJerkMag.mean.."
  * "545" "Avg_fBodyBodyGyroJerkMag.std.."
  * "546" "Avg_fBodyBodyGyroJerkMag.mad.."
  * "547" "Avg_fBodyBodyGyroJerkMag.max.."
  * "548" "Avg_fBodyBodyGyroJerkMag.min.."
  * "549" "Avg_fBodyBodyGyroJerkMag.sma.."
  * "550" "Avg_fBodyBodyGyroJerkMag.energy.."
  * "551" "Avg_fBodyBodyGyroJerkMag.iqr.."
  * "552" "Avg_fBodyBodyGyroJerkMag.entropy.."
  * "553" "Avg_fBodyBodyGyroJerkMag.maxInds"
  * "554" "Avg_fBodyBodyGyroJerkMag.meanFreq.."
  * "555" "Avg_fBodyBodyGyroJerkMag.skewness.."
  * "556" "Avg_fBodyBodyGyroJerkMag.kurtosis.."
  * "557" "Avg_angle.tBodyAccMean.gravity."
  * "558" "Avg_angle.tBodyAccJerkMean..gravityMean."
  * "559" "Avg_angle.tBodyGyroMean.gravityMean."
  * "560" "Avg_angle.tBodyGyroJerkMean.gravityMean."
  * "561" "Avg_angle.X.gravityMean."
  * "562" "Avg_angle.Y.gravityMean."
  * "563" "Avg_angle.Z.gravityMean."