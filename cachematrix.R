## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## To store matrix & inverse value, with associated get and set method for respective values
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <-function(y) {
              x<<- y
              inverse <<-NULL
        }
        
        get <-function() x
        setinverse <- function(theinverse) inverse <<- theinverse
        getinverse <- function() inverse
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## Function retrieves the inverse of the matrix if already calculate
## otherwise it compute inverse and cachces value
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <-x$getinverse()
        if(!is.null(inverse)){
              message("getting cached data")
              return (inverse)
        }
        data <- x$get()
        inverse <- solve(data, ... )
        x$setinverse(inverse)
        inverse
}
