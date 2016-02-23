## Part 1
## Data Science R programming Week 2 assisgnment 
## pollutantmean function takes the mean of measurements of 
## the selected pollutant from selected monitors (ids)

pollutantmean <- function (directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length l indicating 
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length l indicating
        ## the name of the pollutant for which we calculate the mean - 
        ## either "sulfate" or "nitrate"
        
        ## 'id' is an integer vector indicating the monitor ID numbers 
        ## to be used 
        
        ## Return the mean of the pollutant across all monitors listed 
        ## in the 'id' vector (ignoring the NA values)
        ## NOTE: Do not round the result!
        
       ## initialize the final dataset from which the mean is calculated
        y_total <- matrix (0, nrow = 0, ncol=3)
        x <- c()
       
        ## create a character vector of csv files to read 
        for (l in 1:length(id)) {
                x[l] <- paste(getwd(), "/", directory, "/", id[l], ".csv", sep="")
                y <- read.csv(x[l])
                
        ## concatenate the csv file for each id
                y_total <- rbind(y_total, y)
        } 
  
        ## calculate the mean of the final dataset 
        mean (y_total[,pollutant], na.rm = TRUE)
        
}