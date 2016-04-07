#DATA GETTING AND CLEANING COURSE PROJECT 

##DESCRIPTION

###The following steps make up "run_analysis.R":

1. Set a working directory and load libraries needed to successfully run the script 

2. Create file names for Subject_train.txt, X_train.txt and y_train.txt files 

3. Pass filenames to the lapply function and read filenames using read.table 

4. View data read from train files 

5. Repeat steps 2 -4 for Subject_test.txt, X_test.txt and y_test.txt files 

6. Merge train and test lists and convert merged list into a data frame

7. Read the features.txt file into workspace

8. Rename first and last column in the merged data frame as "Subject_test" and "Activity" and rename other colunms using labels in features.txt 

9. View name of columns in merged data frame

10. Replace values of the "Activity" variable with descriptives

11. View new values of the "Activity" variable

12. Remove duplicate column names (to successfully execute the next command)

13. Extract all measurements from variables, in the merged data frame, with names containing "mean" and "std" 

14. Appropriately label merged (mean and std) dataset with descriptive names

15. Create a new dataset with the average of each variable for each activity and each subject

16. Write new dataset into a text file
