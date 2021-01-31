############################################################################################################
###                                                                                                      ###
### The execution of this script assumes that the experiment data zip file has been downloaded and saved ###
### as 'HARexperiment.zip' in the working directory of the R session this script is being executed       ###
###                                                                                                      ###
############################################################################################################

#imports the dplyr library intended to group records and generate summary statistics
library(dplyr)

#extracts the contents of the zipped experiment datasets to the working directory
unzip('HARexperiment.zip')

#reads the individual contents of the 'train' datasets
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
activity_train <- read.table('UCI HAR Dataset/train/y_train.txt')
measurements_train <- read.table('UCI HAR Dataset/train/X_train.txt')

#reads the individual contents of the 'test' datasets
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
activity_test <- read.table('UCI HAR Dataset/test/y_test.txt')
measurements_test <- read.table('UCI HAR Dataset/test/X_test.txt')

#reads the contents of datasets used to provide descriptive names to variables and values
activityNames <- read.table('UCI HAR Dataset/activity_labels.txt')
measurementsNames <- read.table('UCI HAR Dataset/features.txt')

#combines the training and test datasets for each variable (subject, activity, measurements)
subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)
measurements <- rbind(measurements_train, measurements_test)

#extracts only measurements of mean of standard deviation from the bulk of measurements
mNames <- measurementsNames[[2]]
mNamesIndex <- c(grep('.*[Mm]ean.*', mNames), grep('.*[Ss]td.*', mNames))
mNamesfilter <- mNames[mNamesIndex]
measurements_filter <- measurements[ ,mNamesIndex]

#combines the 'subject' column with the 'activity' column and filtered measurements columns as 'HARdata'
HARdata <- cbind(subject, activity, measurements_filter)

#deduces descriptive names for the measurements variables by substituting abbreviated words for their long form
mNamesfilter1 <- gsub('Acc-', 'AccelerometerValue-', mNamesfilter)
mNamesfilter1 <- gsub('Gyro-', 'GyroscopeValue-', mNamesfilter1)
mNamesfilter1 <- gsub('Mag', 'Magnitude', mNamesfilter1)
mNamesfilter1 <- gsub('AccJ', 'AccelerometerJ', mNamesfilter1)
mNamesfilter1 <- gsub('GyroM', 'GyrometerM', mNamesfilter1)
mNamesfilter1 <- gsub('BodyBody', 'Body', mNamesfilter1)
mNamesfilter1 <- gsub('GyroJ', 'GyrometerJ', mNamesfilter1)
mNamesfilter1 <- gsub('AccM', 'AccelerometerM', mNamesfilter1)
mNamesfilter1 <- gsub('Freq', 'Frequency', mNamesfilter1)
mNamesfilter1 <- gsub('\\(\\)', '-', mNamesfilter1)
mNamesfilter1 <- sub('^t', '(time-sampled) ', mNamesfilter1)
mNamesfilter1 <- sub('^f', '(frequency-sampled) ', mNamesfilter1)
mNamesfilter1 <- sub('^......t', 'angle([time-sampled] ', mNamesfilter1)
mNamesfilter1 <- sub('-$', '', mNamesfilter1)

#assigns the processed variable names to the 'HARdata' dataset
names(HARdata) <- c('Subject', 'Activity', mNamesfilter1)

#reformats the activity names dataset to make its row names descriptive
rownames(activityNames) <- activityNames$V2
activityNames <- activityNames[1]

#retrieves the index of each activity sets from the 'Activity' column of the 'HARdata' dataset
walkingIndex <- HARdata$Activity == activityNames['WALKING',1]
walking_uIndex <- HARdata$Activity == activityNames['WALKING_UPSTAIRS',1]
walking_dIndex <- HARdata$Activity == activityNames['WALKING_DOWNSTAIRS',1]
sittingIndex <- HARdata$Activity == activityNames['SITTING',1]
layingIndex <- HARdata$Activity == activityNames['LAYING',1]
standingIndex <- HARdata$Activity == activityNames['STANDING',1]

#recodes the number labels in the activity column of 'HARdata' as descriptive names
HARdata[walkingIndex, 'Activity'] <- 'WALKING'
HARdata[walking_uIndex, 'Activity'] <- 'WALKING_UPSTAIRS'
HARdata[walking_dIndex, 'Activity'] <- 'WALKING_DOWNSTAIRS'
HARdata[sittingIndex, 'Activity'] <- 'SITTING'
HARdata[layingIndex, 'Activity'] <- 'LAYING'
HARdata[standingIndex, 'Activity'] <- 'STANDING'

#groups the 'HARdata' dataset by subjects and activities and calculates the mean for each
#measurements variable for each group which is saved as the resulting tidy data
HARdata2 <- HARdata %>% group_by(Subject, Activity) %>% summarize_all(list(mean))

#writes the resulting tidy dataset to a textfile named 'TidyData.txt'
write.table(HARdata2, 'TidyData.txt', row.names = FALSE)
