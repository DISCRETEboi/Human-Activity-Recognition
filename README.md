## Getting and Cleaning Data Course Project

This repository is built to store the scripts and datasets as required in the assignment of *Getting and Cleaning Data* course offered by Johns Hopkins University through Coursera.

---

#### Project Overview

The goal of this project is to create a tidy data set with the help of R to analyze experimental results which were captured in the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) study.

The `run_analysis.R` script is required to transform the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) obtained from the study to produce the resulting tidy data through the following data cleaning processes:

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
---

#### Repository contents

This repository contains 3 main files (1 R script, 1 codebook & 1 dataset) as outlined below:

 - `run_analysis.R` - This R script generates the tidy data from the raw zip file downloaded in the working directory of the R script.
 - `TidyData.txt` - This is the output file generated from the `run_analysis.R` script. It contains a tidy version of the raw and dispersed datasets.
 - `CodeBook.md` - Contains the definitions of each of the variables in the generated `TidyData.txt` file.