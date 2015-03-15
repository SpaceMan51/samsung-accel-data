---
title: "README.md"
author: "Johnny Vargas (GitHub: SpaceMan51)"
date: "Saturday, March 14, 2015"
output: html_document
---

This readme explains how all of the scripts work and how they are connected.

The purpose of this project is to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis.

Scripts, execution, and result:
------------------------------------------------------
- Script: run_analysis.R
- Process Flow: run_analysis.R will take in the raw files from the original file set (see CodeBook.md for details) and will process them into a neat and tidy text file.
- Result:  (an independent tidy data set with the average of each variable for each activity and each subject)

Background Info:
-------------------------------------------------------
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Reference CodeBook.md for data file information

Logical Process Flow of run_analysis.R :
-------------------------------------------------------
- load libraries
- load files into memory as data frames
- combine test and train sets using rbind to append rows
- data frames to combine:
         (X_test and X_train as X_combined)
         (y_test and y_train as y_combined)
         (subject_test and subject_train as subject_combined)
- identify and subset the rows of interest ( mean() and std() ) in the features dataframe as features_specific
- subset the X_combined data frame as X_combined_cleaned including only the features of interest
- rename columns in X_combined_cleaned to coincide with column names from features_specific
- rename columns in y_combined and subject_combined to be meaningful
- append activities and subjects to cleaned data set; name as X_combined_final
- rename activities in final data frame from integer to meaningful character value (use list of names from activity_labels)
- create an independent tidy data set with the average of each variable for each activity and each subject
- write the summarized file to a new text file (accel_averages.txt)


Required packages (beyond base):
---------------------------------------------------------

- install.packages("data.table")
- install.packages("plyr")

