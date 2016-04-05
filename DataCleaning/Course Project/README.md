#DATA GETTING AND CLEANING COURSE PROJECT 

##DESCRIPTION

###The following steps make up "run_analysis.R":

1. STEP1 - Set a working directory and load libraries needed to successfully run the script 

2. STEP 2 - Create file names for Subject_train.txt, X_train.txt and y_train.txt files 

3. STEP 3- Pass filenames to the lapply function and read filenames using read.table 

4. STEP 4 - View data read from train files 

5. STEP 5 - Repeat steps 2 -4 for Subject_test.txt, X_test.txt and y_test.txt files 

6. STEP 6 - Merge train and test lists and convert merged list into a data frame

7. STEP 7 - Read the features.txt file into workspace

8. STEP 8 - Rename first and last column in the merged data frame as "Subject_test" and "Activity" and rename other colunms using labels in features.txt 

9. STEP 9 - View  name of columns in merged data frame

10. STEP 10 - Replace values of the "Activity" variable with descriptives

11. STEP 11- View new values of the "Activity" variable

12. STEP 12 - Remove duplicate column names (to successfully execute the next command)

13. STEP 13- Extract all measurenemts from variables, in the merged data frame, with names containing "mean" and "std" 

14. STEP 14 - Create a new dataset with the average of each variable for each activity and each subject

15. STEP 15 - Write new dataset into a text file





####CODE BOOK

|S/N	| VARIABLE	           |	DECRIPTION		          	            |
|-----|---------------------|----------------------------------------------|
|1	| f_train	           |Filenames of train text files		      | 
|	|		           |	Character vector                        |       |	|		           |	Length = 3                              |       |2	| dl_train	           |Train data (subject id, training set and     |                                                                                               |	|	                 | 	training	labels) 			      |  
|	|		           |	List of 3 (data frame) elements         |
|3	|f_test	           |Filenames of test  text files                |     
|	|		           |	Character vector                        | 
|	|		           |	Length = 3                              |
|4	|dl_test	           |Test data (subject id, training set and      |                   
|	|		           |	training labels)                        |
|	|		           |	List of 3 (data frame) elements         |   
|5	|mergedData           |Merged train and test datasets                | 
|	|		           |	Data frame                              | 
|	|		           |	7352 observations of 563 variables      | 
|6	|mergedData$Activity  |Activity variable in mergedData               | 
|	|                     |	Character vector                        |
|7	|rd_mergedData	     |Remove duplicate column names in mergedData   |
|	|			     |	Data frame                              |              
|	|			     |	7352 observations of 479 variables      |  
|8	|mean_mergeData	     |All variables with name containing �mean�     | 
|	|                     |	Data frame                              | 
|	|                     |	7352 observations of 53 variables       |  
|9	|std_mergeData	     |All variables with name containing �std�      | 
|	|                     |	Data frame                              |       
|	|		           |	7352 observations of 33 variables       |  
|10	|newdata	  	     |Average of all variables by subject id and   |                                                      
|     |                     |	activity                                |
|	|	      	     |	126 observations of 563 variables       |
|-----|-------------------------------------------------------------------| 


















