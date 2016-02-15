# DataCleaningAssignment

This document describes the run_analysis.R script used for the Data Cleaning Assignment. Also refer to the Codebook file for a description of the variables of the outputed tidy data. The purpose of run_analysis is to create a tidy data set that displays the average values of the mean and standard deviation features of the "Human Activity Recognition Using Smartphones Dataset" for each activity and each subject id.

The first step in the run_analysis script was to load all relevant files from the "Human Activity Recognition Using Smartphones Dataset". The files needed were:

- x_train.txt: the training data variables
- y_train.txt: the training data labels
- subject_train.txt: the subject id's for the training data
- X_test.txt: the test data variables
- y_test.txt: the test data labels
- subject_test.txt: the subject id's for the test data
- activity_labels.txt: the activity labels and corresponding numbers (lookup table)
- features.txt: the feature labels for the variables

The next step was to add the subjectID and activity label (numbers) to the test and training data sets. This was accomplished with cbind

The next step was to combine the test and training data using rbind

The next step was to add the column names, from the feature labels (features.txt)

Then, only the columns that have "mean" or "std" (standard deviation) were kept in the data set

The activity numbers were changed to their corresponding activity labels using the acitivity_labels lookup table.

Then, all the column names were made more readable by:

- changing all text to lower case
- removing all "-"
- replacing "t" with "time"
- replacing "f" with "freq" (for frequency)

A new data set that is tidy was formed as the average of each feature for each subject ID and each activity

The column names were changed for this new dataset to reflect this by adding "ave()" to each label.

The new data set was saved as a text file, and then the codebook was started using the promptData function.
