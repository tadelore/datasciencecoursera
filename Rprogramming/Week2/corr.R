## Part 2
## Data Science R - programming Week 2 assignment 
## Correlation function reads a directory of files and reports
## correlation between sulfate and nitrate measurements greater than a given 
## threshold of completete cases given across all files 

## the correlation function returns a vector of correlations for the monitors
## that meet the threshold requirement and a numeric vector of length 0 otherwise

corr <- function (directory, threshold = 0) {
        ##'directory' is a character vector of length 1 indicating 
        ##the locationn of the csv files
        
        ##'threshold' is a numeric vector of length 1 indicating the
        ##number of completely observed observations (on all variables) 
        ## required to compute the correlation between nitrate and sulfate;
        ##the default is 0
        
        ##Return a numeric vector of correlations
        ##NOTE: Do not round the result!
        
        ## create a character vector of csv files to read 
        d <- c()
        nobs <- c()
        correlation <- c()
        
        for (l in 1:332) {
                d[l] <- paste(getwd(), "/", directory, "/", l , ".csv", sep="")
                y <- read.csv(d[l])
                y_na <- is.na(y[,2:3])
                y_naf <- (y_na[, 1] == FALSE) & (y_na[,2] == FALSE) ##&(y_na[,3] == FALSE)& (y_na[,4] == FALSE)
                y_naf_ind <- which(y_naf)
                nobs <- c(nobs, sum(y_naf))
                
                if (nobs[l] > threshold) 
                correlation[l] <- cor(y[y_naf_ind,2], y[y_naf_ind,3], use="everything")
        }
        
        correlation <- correlation[!is.na(correlation)]
     
}
