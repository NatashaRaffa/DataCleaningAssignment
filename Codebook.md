Description:

The tidydata.txt dataset was created from the Human Activity Recognition Using Smartphones Dataset Version 1.0. This dataset is the average value of all the mean and standard deviation (std) variables for each subject and activity type. - refer to the Study Design section for more information

===========================
     
Format:

     A data frame with 180 observations on the following 81 variables.

     ‘subjectid’ a numeric vector representing the ID number of the subject. There are 30 volunteers within an age bracket of 19-48 years.

     ‘activity’ a factor with levels ‘LAYING’ ‘SITTING’ ‘STANDING’ ‘WALKING’ ‘WALKING_DOWNSTAIRS’ ‘WALKING_UPSTAIRS’ - the different activities performed by the subjects

The remaining variables are the average values of features taken from the original Human Activity Recognition Using Smartphones Dataset. Only variables that calculated mean or standard deviation were averaged. All variables were averaged for each subjectID and activity.

     ‘ave(timebodyaccmean()x)’ a numeric vector

     ‘ave(timebodyaccmean()y)’ a numeric vector

     ‘ave(timebodyaccmean()z)’ a numeric vector

     ‘ave(timegravityaccmean()x)’ a numeric vector

     ‘ave(timegravityaccmean()y)’ a numeric vector

     ‘ave(timegravityaccmean()z)’ a numeric vector

     ‘ave(timebodyaccjerkmean()x)’ a numeric vector

     ‘ave(timebodyaccjerkmean()y)’ a numeric vector

     ‘ave(timebodyaccjerkmean()z)’ a numeric vector

     ‘ave(timebodygyromean()x)’ a numeric vector

     ‘ave(timebodygyromean()y)’ a numeric vector

     ‘ave(timebodygyromean()z)’ a numeric vector

     ‘ave(timebodygyrojerkmean()x)’ a numeric vector

     ‘ave(timebodygyrojerkmean()y)’ a numeric vector

     ‘ave(timebodygyrojerkmean()z)’ a numeric vector

     ‘ave(timebodyaccmagmean())’ a numeric vector

     ‘ave(timegravityaccmagmean())’ a numeric vector

     ‘ave(timebodyaccjerkmagmean())’ a numeric vector

     ‘ave(timebodygyromagmean())’ a numeric vector

     ‘ave(timebodygyrojerkmagmean())’ a numeric vector

     ‘ave(freqbodyaccmean()x)’ a numeric vector

     ‘ave(freqbodyaccmean()y)’ a numeric vector

     ‘ave(freqbodyaccmean()z)’ a numeric vector

     ‘ave(freqbodyaccmeanfreq()x)’ a numeric vector

     ‘ave(freqbodyaccmeanfreq()y)’ a numeric vector

     ‘ave(freqbodyaccmeanfreq()z)’ a numeric vector

     ‘ave(freqbodyaccjerkmean()x)’ a numeric vector

     ‘ave(freqbodyaccjerkmean()y)’ a numeric vector

     ‘ave(freqbodyaccjerkmean()z)’ a numeric vector

     ‘ave(freqbodyaccjerkmeanfreq()x)’ a numeric vector

     ‘ave(freqbodyaccjerkmeanfreq()y)’ a numeric vector

     ‘ave(freqbodyaccjerkmeanfreq()z)’ a numeric vector

     ‘ave(freqbodygyromean()x)’ a numeric vector

     ‘ave(freqbodygyromean()y)’ a numeric vector

     ‘ave(freqbodygyromean()z)’ a numeric vector

     ‘ave(freqbodygyromeanfreq()x)’ a numeric vector

     ‘ave(freqbodygyromeanfreq()y)’ a numeric vector

     ‘ave(freqbodygyromeanfreq()z)’ a numeric vector

     ‘ave(freqbodyaccmagmean())’ a numeric vector

     ‘ave(freqbodyaccmagmeanfreq())’ a numeric vector

     ‘ave(freqbodybodyaccjerkmagmean())’ a numeric vector

     ‘ave(freqbodybodyaccjerkmagmeanfreq())’ a numeric vector

     ‘ave(freqbodybodygyromagmean())’ a numeric vector

     ‘ave(freqbodybodygyromagmeanfreq())’ a numeric vector

     ‘ave(freqbodybodygyrojerkmagmean())’ a numeric vector

     ‘ave(freqbodybodygyrojerkmagmeanfreq())’ a numeric vector

     ‘ave(timebodyaccstd()x)’ a numeric vector

     ‘ave(timebodyaccstd()y)’ a numeric vector

     ‘ave(timebodyaccstd()z)’ a numeric vector

     ‘ave(timegravityaccstd()x)’ a numeric vector

     ‘ave(timegravityaccstd()y)’ a numeric vector

     ‘ave(timegravityaccstd()z)’ a numeric vector

     ‘ave(timebodyaccjerkstd()x)’ a numeric vector

     ‘ave(timebodyaccjerkstd()y)’ a numeric vector

     ‘ave(timebodyaccjerkstd()z)’ a numeric vector

     ‘ave(timebodygyrostd()x)’ a numeric vector

     ‘ave(timebodygyrostd()y)’ a numeric vector

     ‘ave(timebodygyrostd()z)’ a numeric vector

     ‘ave(timebodygyrojerkstd()x)’ a numeric vector

     ‘ave(timebodygyrojerkstd()y)’ a numeric vector

     ‘ave(timebodygyrojerkstd()z)’ a numeric vector

     ‘ave(timebodyaccmagstd())’ a numeric vector

     ‘ave(timegravityaccmagstd())’ a numeric vector

     ‘ave(timebodyaccjerkmagstd())’ a numeric vector

     ‘ave(timebodygyromagstd())’ a numeric vector

     ‘ave(timebodygyrojerkmagstd())’ a numeric vector

     ‘ave(freqbodyaccstd()x)’ a numeric vector

     ‘ave(freqbodyaccstd()y)’ a numeric vector

     ‘ave(freqbodyaccstd()z)’ a numeric vector

     ‘ave(freqbodyaccjerkstd()x)’ a numeric vector

     ‘ave(freqbodyaccjerkstd()y)’ a numeric vector

     ‘ave(freqbodyaccjerkstd()z)’ a numeric vector

     ‘ave(freqbodygyrostd()x)’ a numeric vector

     ‘ave(freqbodygyrostd()y)’ a numeric vector

     ‘ave(freqbodygyrostd()z)’ a numeric vector

     ‘ave(freqbodyaccmagstd())’ a numeric vector

     ‘ave(freqbodybodyaccjerkmagstd())’ a numeric vector

     ‘ave(freqbodybodygyromagstd())’ a numeric vector

     ‘ave(freqbodybodygyrojerkmagstd())’ a numeric vector

Here is a description of the variables listed in the ave() brackets above (as taken from the original dataset description):

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals and extracted for this dataset are: 

mean(): Mean value
std(): Standard deviation

=======================

Study Design:

Refer to the ReadMe file for details on how this dataset was created. It was formed from the Human Activity Recognition Using Smartphones Dataset downloaded from this [link.] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

Only the features that calculated the mean or standard deviation of the variables of the original dataset were kept. Then, the average of these features for each subject id and activity were calculated. A new tidy dataset was created with these variables listed as above.


======================

Reference:


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
     
