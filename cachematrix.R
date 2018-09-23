## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatris
##  i: x, an invertible matrix
##  o: a list of functions relating to x
##      set: sets the value of the matrix and sets stored inverse to NULL
##      get: returns the matrix
##      setInverse: sets value of inverse (as input to function)
##      getInverse: returns value of previously set inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- funtion(y) {
        x <<- y
        i <<- NULL
    }
    setInverse <- function(inverse) i <<- inverse
    getInverse <- function() i
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## cacheSolve
##  i: x, a list containing various functions pertaining to a matrix, the output of makeCacheMatrix
##  o: the inverse of the matrix used to construct x
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if(!is.null(i)) {
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setInverse(i)
    i
}
