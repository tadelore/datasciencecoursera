
#CODE BOOK

The variables for each record in the (independent) tidy data set includes:

1. An identifier of the subject who carried out the experiment 
2. Mean of all time and frequency domain variables
3. Standard deviation (std) of all time and frequency domain variables
4. Activity labels of the time and frequency domain (mean and std) variables 


The following variables were calculated in cleaning up the data: 

|S/N	| VARIABLE	           |	DECRIPTION		          	         |
|-----|---------------------|-------------------------------------------|
|1	| f_train	           |Filenames of train text files		   |   
|	|		           |	Character vector                     | |	|                     |	Length = 3                        	   | 
|2	| dl_train	           |Train data (subject id, training set and   |                                                                                               |	|	                 | 	training	labels) 			   |  
|	|		           |	List of 3 (data frame) elements       |
|3	|f_test	           |Filenames of test text files              |     
|	|		           |	Character vector                      | 
|	|		           |	Length = 3                            |
|4	|dl_test	           |Test data (subject id, training set and    |                   
|	|		           |	training labels)                      |
|	|		           |	List of 3 (data frame) elements       |   
|5	|mergedData           |Merged train and test datasets             | 
|	|		           |	Data frame                            | 
|	|		           |	7352 observations of 563 variables    | 
|6	|mergedData$Activity  |Activity variable in mergedData            | 
|	|                     |	Character vector                     |
|7	|rd_mergedData	     |Remove duplicate column names in mergedData|
|	|			     |	Data frame                            |              
|	|			     |	7352 observations of 479 variables    |  
|8	|mean_mergedData	     |All variables with name containing “mean”  | 
|	|                     |	Data frame                            | 
|	|                     |	7352 observations of 53 variables     |  
|9	|std_mergedData	     |All variables with name containing “std”   | 
|	|                     |	Data frame                            |       
|	|		           |	7352 observations of 33 variables     |  
|10	|mergedData_mean_std  |All variables with name containing “mean”  | |     |                     |	and “std”                             |    
|     |                     |	Data frame 					   |
|     |                     |	7352 observations with 86 variables   |
|11   |newdata	  	     |Average of all mean and standard deviation |      |     |                     |	variables by subjected & activity     |                                                      
|	|	      	     |	Data frame                            |    |     |                     |     126 observations of 88 variables      |
|-----|-----------------------------------------------------------------| 
