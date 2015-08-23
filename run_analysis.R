
## Get and unzip data
file <- "data.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if( file.exists(file)) {
    file.remove(file)
}

download.file(fileUrl, file, method="curl")

if(!file.exists(file)) {
    stop
}

unzip(file) 

## Load activity data
activityTest  <- read.table("UCI HAR Dataset/test/y_test.txt",header = FALSE)
activityTrain  <- read.table("UCI HAR Dataset/train/y_train.txt",header = FALSE)

## Load subject data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt",header = FALSE)
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt",header = FALSE)

## Load features data
featuresTest  <- read.table("UCI HAR Dataset/test/X_test.txt",header = FALSE)
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt",header = FALSE)

## Merge data
subjectAll <- rbind(subjectTrain, subjectTest)
activityAll <- rbind(activityTest,activityTrain)
featuresAll <- rbind(featuresTrain, featuresTest)

names(subjectAll) <- c("subject")
names(activityAll) <- c("activity")
featuresNames <- read.table("UCI HAR Dataset/features.txt",head=FALSE)
names(featuresAll) <- featuresNames$V2

all = cbind( featuresAll, cbind(subjectAll, activityAll) )

subFeaturesNames <- featuresNames$V2[grep("mean\\(\\)|std\\(\\)", featuresNames$V2)]

names<-c(as.character(subFeaturesNames), "subject", "activity" )

all<-subset(all,select=names)

## Read activity names
activityNames <- read.table("UCI HAR Dataset/activity_labels.txt",header = FALSE)

## Renames acitivity in the all
i = 1
for (activityName in activityNames$V2) {
    all$activity <- gsub(i, activityName, all$activity)
    i <- i + 1
}

## Rename columns names
names(all)<-gsub("^t", "time", names(all))
names(all)<-gsub("^f", "frequency", names(all))
names(all)<-gsub("-mean", "Mean", names(all))
names(all)<-gsub("-std", "Std", names(all))
names(all)<-gsub("[()]", "", names(all))
names(all)<-gsub("[-]", ".", names(all))

library(plyr)
tidy<-aggregate(. ~subject + activity, all, mean)

tidy<-tidy[order(tidy$subject,tidy$activity),]
write.table(tidy, file = "tidydata.txt",row.name=FALSE)

