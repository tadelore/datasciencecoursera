## Part 2
## Data Science R - programming Week 2 assignment 
## Complete function reads a directory of files and reports
## the number of completetly observed cases in each data file

complete <- function(directory, id=1:332) {
        ##'directory' is a character vector of length 1 indicating 
        ##the locationn of the csv files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## initialize nobs vector
        nobs <- c()
        d <- c()
        
        ## create a character vector of csv files to read 
        for (l in 1:length(id)) {
                d[l] <- paste(getwd(), "/", directory, "/", id[l], ".csv", sep="")
                y <- read.csv(d[l])
                y_na <- is.na(y[,2:3])
                y_naf <- (y_na[,1] == FALSE) & (y_na[,2] == FALSE)
                nobs <- c(nobs, sum(y_naf))
        }
        
        ## Return a data frame of the form:
        ##id nobs
        ##1  117
        ##2  1041 
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the 
        ## number of complete cases 

        data.frame(id, nobs)
}