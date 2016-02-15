#Get the data from the folders on the computer

trainingData <- read.table(".\\train\\x_train.txt")
trainingLabels <- read.table(".\\train\\y_train.txt")
trainingSubjectID <- read.table(".\\train\\subject_train.txt")
 
testData <- read.table(".\\test\\X_test.txt")
testLabels <- read.table(".\\test\\y_test.txt")
testSubjectID <- read.table(".\\test\\subject_test.txt")
 
activityLabels <- read.table(".\\activity_labels.txt")
features <- read.table(".\\features.txt")

#Add the subject id and activity label to the test and training data sets (as columns)
testDataAll <- cbind(testSubjectID, testLabels, testData)
trainingDataAll <- cbind(trainingSubjectID, trainingLabels, trainingData)

#Merge test and training data together
mergedData <- rbind(testDataAll, trainingDataAll)

#Add column names
colnames(mergedData) <- c("subjectid", "activity", as.character(features[,2]))

#Only keep the columns that have "mean" or "std" (standard deviation). Still keep the subjectID and activity columns
colIndMean <- grep("(.*)mean(.*)", names(mergedData))
colIndStd <- grep("(.*)std(.*)", names(mergedData))
dataSet <- mergedData[,c(1,2,colIndMean,colIndStd)]

#Change activity numbers to corresponding labels using activityLabels as a lookup vector
lookupVect <- activityLabels[,2]
names(lookupVect) <- activityLabels[,1]
dataSet$activity <- lookupVect[dataSet$activity]

#Fix features column names to be more readable
#First, all lower case
names(dataSet) <- tolower(names(dataSet))
#remove all -
names(dataSet) <- gsub("-","",names(dataSet))
#replace "t" at beginning of line with "time"
names(dataSet) <- sub("^t","time",names(dataSet))
#replace "f" at beginning of line with "freq" (for frequency)
names(dataSet) <- sub("^f","freq",names(dataSet))

#Form the tidy data set - the average of each feature measured for each subject and activity
aveMeanAndStd <- dataSet %>%
  group_by(subjectid,activity) %>%
  summarise_each(funs(mean))

#Change the column names to include ave()
tempNames <- paste0("ave(", names(aveMeanAndStd[,3:ncol(aveMeanAndStd)]))
tempNames <- paste0(tempNames, ")")
colnames(aveMeanAndStd)[3:ncol(aveMeanAndStd)] <- tempNames

#Save the new dataset to a file
write.table(aveMeanAndStd, file="tidydata.txt",row.names = FALSE)

#Start the codebook by using prompt data - changes were made in notepad to this basic document
promptData(aveMeanAndStd)
tools::Rd2txt("aveMeanAndStd.Rd", out="Codebook.txt")

