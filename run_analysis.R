## Johnny Vargas (GitHub: SpaceMan51)
## Getting and Cleaning Data Course Project

## View CodeBook.md and README.md for detailed information on files, process
## and variables

## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for
##    each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set
##    with the average of each variable for each activity and each subject.
#########################################
# Preparation
# Download source files and extract into working directory
# View CodeBook.md for file descriptions and information

#load libraries
library(plyr)
library(data.table)

## 1. Merge the training and the test sets to create one data set.
## read files into memory:
## set file paths
featuresFile     <- "features.txt"
activity_labelsFile <- "activity_labels.txt"

X_trainFile      <- "train/X_train.txt"
y_trainFile      <- "train/y_train.txt"
subjecttrainFile <- "train/subject_train.txt"

X_testFile       <- "test/X_test.txt"
y_testFile       <- "test/y_test.txt"
subjecttestFile  <- "test/subject_test.txt"

## load files into data frames
features <- read.table(featuresFile, header = FALSE)
activity_labels <- read.table(activity_labelsFile, header = FALSE)

X_train <- read.table(X_trainFile, header = FALSE)
y_train <- read.table(y_trainFile, header = FALSE)
subject_train <- read.table(subjecttrainFile, header = FALSE)

X_test <- read.table(X_testFile, header = FALSE)
y_test <- read.table(y_testFile, header = FALSE)
subject_test <- read.table(subjecttestFile, header = FALSE)

# combine test and train data sets
# (X_test and X_train as X_combined)
# (y_test and y_train as y_combined)
# (subject_test and subject_train as subject_combined)
X_combined <- rbind(X_test, X_train)
y_combined <- rbind(y_test, y_train)
subject_combined <- rbind(subject_test, subject_train)

# subset rows of features specific to mean() and std()
features_specific <- features[c(grep("mean", features$V2),grep("std", features$V2)),]
# create list of features to know which columns to keep from data set
features_specific_sorted <- features_specific[order(features_specific[1]),c("V1", "V2")]
features_specific_id <- features_specific[order(features_specific[1]),"V1"]
features_specific_name <- features_specific[order(features_specific[1]),"V2"]

# subset the X_combined data frame including only the features of interest
X_combined_cleaned <- subset(X_combined, , features_specific_id)

# rename columns in X_combined_cleaned to coordinate with column names from features_specific
setnames(X_combined_cleaned, old = names(X_combined_cleaned), new = as.character(features_specific_name))

# rename columns from activities and subject files
setnames(y_combined, old = names(y_combined), new = "activity")
setnames(subject_combined, old = names(subject_combined), new = "subject")

# append activities and subjects to cleaned data set
X_combined_final <- cbind(subject_combined, y_combined, X_combined_cleaned)

# Use descriptive activity names to name the activities in the data set
# rename activities in final data frame from integer to meaningful character value
# use values from activity_labels
X_combined_final$activity[X_combined_final$activity == "1" ] <- "WALKING"
X_combined_final$activity[X_combined_final$activity == "2" ] <- "WALKING_UPSTAIRS"
X_combined_final$activity[X_combined_final$activity == "3" ] <- "WALKING_DOWNSTAIRS"
X_combined_final$activity[X_combined_final$activity == "4" ] <- "SITTING"
X_combined_final$activity[X_combined_final$activity == "5" ] <- "STANDING"
X_combined_final$activity[X_combined_final$activity == "6" ] <- "LAYING"

## From the X_combined_final data set, create an independent tidy data set
## with the average of each variable for each activity and each subject
groupColumns = c("subject","activity")
dataColumns = 3:81
X_combined_averages = ddply(X_combined_final, groupColumns, function(x) colMeans(x[dataColumns]))

# write file with average of each variable for each activity and subject
write.table(X_combined_averages,"accel_averages.txt", row.name = FALSE)

