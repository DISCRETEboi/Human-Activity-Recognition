# CodeBook

The description of the individual variables in the tidy data *TidyData.txt* are outlined as follows:

#### Basic Assumption

The execution of the run_analysis.R script assumes that the experiment data has been downloaded from the link provided and saved as *HARexperiment.zip* in the working directory of the running R session.

**The tidy dataset variables along with their correlations to the untidy dataset variables and list of possible values (domain) are listed as follows in the outlined format:**    

##### **Format**

Variable name in tidy data :- Variable definition corresponding to the untidy data
(domain definition)

---

 - Subject :- The number used to label the volunteer that took part in the experimental study (Possible values are integers in range 1 - 30 inclusive)

 - Activity :- The activity the volunteer performs at the time the observation was taken (Possible values are 'WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'STANDING', 'SITTING', 'LAYING')

 - (time-sampled) BodyAccelerometerValue-mean--X :- tBodyAcc-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerValue-mean--Y :- tBodyAcc-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerValue-mean--Z :- tBodyAcc-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerValue-mean--X :- tGravityAcc-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerValue-mean--Y :- tGravityAcc-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerValue-mean--Z :- tGravityAcc-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerk-mean--X :- tBodyAccJerk-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerk-mean--Y :- tBodyAccJerk-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerk-mean--Z :- tBodyAccJerk-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeValue-mean--X :- tBodyGyro-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeValue-mean--Y :- tBodyGyro-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeValue-mean--Z :- tBodyGyro-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerk-mean--X :- tBodyGyroJerk-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerk-mean--Y :- tBodyGyroJerk-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerk-mean--Z :- tBodyGyroJerk-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerMagnitude-mean :- tBodyAccMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerMagnitude-mean :- tGravityAccMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerkMagnitude-mean :- tBodyAccJerkMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeMagnitude-mean :- tBodyGyroMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerkMagnitude-mean :- tBodyGyroJerkMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-mean--X :- fBodyAcc-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-mean--Y :- fBodyAcc-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-mean--Z :- fBodyAcc-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-meanFrequency--X :- fBodyAcc-meanFreq()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-meanFrequency--Y :- fBodyAcc-meanFreq()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-meanFrequency--Z :- fBodyAcc-meanFreq()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-mean--X :- fBodyAccJerk-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-mean--Y :- fBodyAccJerk-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-mean--Z :- fBodyAccJerk-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-meanFrequency--X :- fBodyAccJerk-meanFreq()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-meanFrequency--Y :- fBodyAccJerk-meanFreq()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-meanFrequency--Z :- fBodyAccJerk-meanFreq()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-mean--X :- fBodyGyro-mean()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-mean--Y :- fBodyGyro-mean()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-mean--Z :- fBodyGyro-mean()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-meanFrequency--X :- fBodyGyro-meanFreq()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-meanFrequency--Y :- fBodyGyro-meanFreq()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-meanFrequency--Z :- fBodyGyro-meanFreq()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerMagnitude-mean :- fBodyAccMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerMagnitude-meanFrequency :- fBodyAccMag-meanFreq() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerkMagnitude-mean :- fBodyBodyAccJerkMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerkMagnitude-meanFrequency :- fBodyBodyAccJerkMag-meanFreq() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeMagnitude-mean :- fBodyBodyGyroMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeMagnitude-meanFrequency :- fBodyBodyGyroMag-meanFreq() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeJerkMagnitude-mean :- fBodyBodyGyroJerkMag-mean() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeJerkMagnitude-meanFrequency :- fBodyBodyGyroJerkMag-meanFreq() (Possible values are real numbers in range [-1, 1])
 
 - angle([time-sampled] BodyAccelerometerMean,gravity) :- angle(tBodyAccMean,gravity) (Possible values are real numbers in range [-1, 1])
 
 - angle([time-sampled] BodyAccelerometerJerkMean),gravityMean) :- angle(tBodyAccJerkMean),gravityMean) (Possible values are real numbers in range [-1, 1])
 
 - angle([time-sampled] BodyGyroscopeMean,gravityMean) :- angle(tBodyGyroMean,gravityMean) (Possible values are real numbers in range [-1, 1])
 
 - angle([time-sampled] BodyGyroscopeJerkMean,gravityMean) :- angle(tBodyGyroJerkMean,gravityMean) (Possible values are real numbers in range [-1, 1])
 
 - angle(X,gravityMean) :- angle(X,gravityMean) (Possible values are real numbers in range [-1, 1])
 
 - angle(Y,gravityMean) :- angle(Y,gravityMean) (Possible values are real numbers in range [-1, 1])
 
 - angle(Z,gravityMean) :- angle(Z,gravityMean) (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerValue-std--X :- tBodyAcc-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerValue-std--Y :- tBodyAcc-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerValue-std--Z :- tBodyAcc-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerValue-std--X :- tGravityAcc-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerValue-std--Y :- tGravityAcc-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerValue-std--Z :- tGravityAcc-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerk-std--X :- tBodyAccJerk-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerk-std--Y :- tBodyAccJerk-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerk-std--Z :- tBodyAccJerk-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeValue-std--X :- tBodyGyro-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeValue-std--Y :- tBodyGyro-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeValue-std--Z :- tBodyGyro-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerk-std--X :- tBodyGyroJerk-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerk-std--Y :- tBodyGyroJerk-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerk-std--Z :- tBodyGyroJerk-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerMagnitude-std :- tBodyAccMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) GravityAccelerometerMagnitude-std :- tGravityAccMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyAccelerometerJerkMagnitude-std :- tBodyAccJerkMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeMagnitude-std :- tBodyGyroMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (time-sampled) BodyGyroscopeJerkMagnitude-std :- tBodyGyroJerkMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-std--X :- fBodyAcc-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-std--Y :- fBodyAcc-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerValue-std--Z :- fBodyAcc-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-std--X :- fBodyAccJerk-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-std--Y :- fBodyAccJerk-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerk-std--Z :- fBodyAccJerk-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-std--X :- fBodyGyro-std()-X (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-std--Y :- fBodyGyro-std()-Y (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeValue-std--Z :- fBodyGyro-std()-Z (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerMagnitude-std :- fBodyAccMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyAccelerometerJerkMagnitude-std :- fBodyBodyAccJerkMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeMagnitude-std :- fBodyBodyGyroMag-std() (Possible values are real numbers in range [-1, 1])
 
 - (frequency-sampled) BodyGyroscopeJerkMagnitude-std :- fBodyBodyGyroJerkMag-std() (Possible values are real numbers in range [-1, 1])
