# Description

Data was generated based on Human Activity Recognition Using Smartphones Data Set stored at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Transformations
run_analysis.R script performs following operation to generate tidy data set:

1. Downloads the data
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
1. Saves tidy data into the file tidydata.txt

# Tidy data set variables

## Identifiers

* `subject` - subject identifier 
* `activity` - activity type

## Measurements

### Glossary
* `Acc` Acceleromenter
* `Gyro` Gyroscope
* `X` or `Y` : Axis in which the measure was collected
* `Std` Standard deviation
* `Mean` Mean of the measurement
* `Gravity` To indicate gravity signals

### Variables
 * `timeBodyAccMean.X`
 * `timeBodyAccMean.Y`
 * `timeBodyAccMean.Z`
 * `timeBodyAccStd.X`
 * `timeBodyAccStd.Y`
 * `timeBodyAccStd.Z`
 * `timeGravityAccMean.X`
 * `timeGravityAccMean.Y`
 * `timeGravityAccMean.Z`
 * `timeGravityAccStd.X`
 * `timeGravityAccStd.Y`
 * `timeGravityAccStd.Z`
 * `timeBodyAccJerkMean.X`
 * `timeBodyAccJerkMean.Y`
 * `timeBodyAccJerkMean.Z`
 * `timeBodyAccJerkStd.X`
 * `timeBodyAccJerkStd.Y`
 * `timeBodyAccJerkStd.Z`
 * `timeBodyGyroMean.X`
 * `timeBodyGyroMean.Y`
 * `timeBodyGyroMean.Z`
 * `timeBodyGyroStd.X`
 * `timeBodyGyroStd.Y`
 * `timeBodyGyroStd.Z`
 * `timeBodyGyroJerkMean.X`
 * `timeBodyGyroJerkMean.Y`
 * `timeBodyGyroJerkMean.Z`
 * `timeBodyGyroJerkStd.X`
 * `timeBodyGyroJerkStd.Y`
 * `timeBodyGyroJerkStd.Z`
 * `timeBodyAccMagMean`
 * `timeBodyAccMagStd`
 * `timeGravityAccMagMean`
 * `timeGravityAccMagStd`
 * `timeBodyAccJerkMagMean`
 * `timeBodyAccJerkMagStd`
 * `timeBodyGyroMagMean`
 * `timeBodyGyroMagStd`
 * `timeBodyGyroJerkMagMean`
 * `timeBodyGyroJerkMagStd`
 * `frequencyBodyAccMean.X`
 * `frequencyBodyAccMean.Y`
 * `frequencyBodyAccMean.Z`
 * `frequencyBodyAccStd.X`
 * `frequencyBodyAccStd.Y`
 * `frequencyBodyAccStd.Z`
 * `frequencyBodyAccJerkMean.X`
 * `frequencyBodyAccJerkMean.Y`
 * `frequencyBodyAccJerkMean.Z`
 * `frequencyBodyAccJerkStd.X`
 * `frequencyBodyAccJerkStd.Y`
 * `frequencyBodyAccJerkStd.Z`
 * `frequencyBodyGyroMean.X`
 * `frequencyBodyGyroMean.Y`
 * `frequencyBodyGyroMean.Z`
 * `frequencyBodyGyroStd.X`
 * `frequencyBodyGyroStd.Y`
 * `frequencyBodyGyroStd.Z`
 * `frequencyBodyAccMagMean`
 * `frequencyBodyAccMagStd`
 * `frequencyBodyBodyAccJerkMagMean`
 * `frequencyBodyBodyAccJerkMagStd`
 * `frequencyBodyBodyGyroMagMean`
 * `frequencyBodyBodyGyroMagStd`
 * `frequencyBodyBodyGyroJerkMagMean`
 * `frequencyBodyBodyGyroJerkMagStd`


