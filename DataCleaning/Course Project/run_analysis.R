#Getting and Cleaning Data Project 
#set working directory
setwd("C:/Users/datacent52/Documents/Temilade Adelore_Office/DataScienceCourse/DataCleaning")

#include the following libraries
library(plyr)
library(dplyr)
library("RCurl", lib.loc="~/R/win-library/3.2")

#create object with file names with other datsets in train folder
f_train <- file.path(paste(getwd(),"/UCI HAR Dataset/train", sep = ""),
                     c("subject_train.txt", "X_train.txt", "y_train.txt"))

#read train dataset
dl_train <- lapply(f_train, read.table)

#view train dataset
#str(dl_train)

#Then create object with file names with other datsets in test folder
f_test <- file.path(paste(getwd(),"/UCI HAR Dataset/test", sep = ""), 
                    c("subject_test.txt", "X_test.txt", "y_test.txt"))

#read train dataset
dl_test <- lapply(f_test, read.table)

#view train dataset
#str(dl_test)

#merge training and test sets to creat one datset
mergedData <- merge.list(dl_train, dl_test)

#convert merged list to data frame
mergedData <- do.call("cbind",mergedData)

#read the features txt file (this contain variable names for the dataset)
features <- read.table(paste(getwd(),"/UCI HAR Dataset/features.txt", sep = ""))

#rename variables (columns) with list from features
names(mergedData) <- c("Subject_test", as.character(features[,2]), "Activity")

#view names
#head(names(mergedData))

#replace Activity variable values with descriptives
mergedData$Activity <- as.character(mergedData$Activity)
mergedData$Activity <- revalue(mergedData$Activity, c("1" = "WALKING", "2" = "WALKING_UPSTAIRS",
                                                      "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING",
                                                      "5" = "STANDING", "6" = "LAYING"))

#view Activity variable 
#head((mergedData$Activity))

#remove duplicate column names 
rd_mergedData <- mergedData[,!duplicated(colnames(mergedData))]

#extract the mean and standard deviation measurements for each variable 
mean_mergedData <- select(rd_mergedData, contains("mean"))
std_mergedData <- select(rd_mergedData, contains("std"))

mergedData_mean_std <- cbind(mean_mergedData, std_mergedData)

#appropriately label merged dataset with descriptive names 
names(mergedData_mean_std) <- gsub("^t", "time", names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub("^f", "freq", names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub("std", "standard_deviation", names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub("Mag", "Magnitude", names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub("Acc", "Accelerometer", names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub("Gyro", "Gyroscope", names(mergedData_mean_std))

#create a dataset with the average of each variable for each subject and each activity 
newdata <- aggregate(mergedData_mean_std, 
                     list(mergedData$Subject_test, mergedData$Activity), mean)

#save newdata as a text file
write.table(newdata, file = paste(getwd(), "/Course Project/newdata_step5.txt",
                                              sep = ""), row.names = FALSE)
#remove all outputs except newdata 
rm(f_train,dl_train,f_test,dl_test,mergedData, rd_mergedData,
                mean_mergedData,std_mergedData,features)

                         