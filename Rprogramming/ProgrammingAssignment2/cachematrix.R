
##The 1st function creates a special "matrix" object that can cache its inverse
##The 2nd function computes the inverse of the special matrix returned by the 1st function 
##If the inverse has already been calculated (i.e. the special matrix has not changed)
##the 2nd function retrtieves the already calculated inverse from the cache

## The makeCacheMatrix (1st) function takes an argument and return a list of elements that:
## sets value of a matrix
## gets the value of a matrix
## sets the inverse of a matrix
## gets the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
                inv <- NULL
                set <- function(y) {
                        x <<- y
                        inv <<- NULL
                }
                get <- function() x
                setinv <- function(inverse) inv <<- solve
                getinv <- function() inv
                list(set = set, get = get,
                     setinv = setinv,
                     getinv = getinv)
        

}

##The cacheSolve (2nd) function 
## gets the inverse from the cache 
## for a previously calculated special matrix
## or computes the inverse of a new (never before calculated) special matrix 

cacheSolve <- function(x, ...) {
           inv <- x$getinv()
                if(!is.null(inv)) {
                        message("getting cached data")
                        return(inv)
                }
                data <- x$get()
                inv <- solve(data, ...) ## note data must be a square matrix 
                x$setinv(inv)
                inv
        
        ## Return a matrix that is the inverse of 'x'
}
