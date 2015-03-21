## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## similar to cachemean function
## function returns a list of functions
## solve function is used for inverse 
## assuming matrix is a square matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get, setinv = setinv,getinv = getinv)
}


## Write a short comment describing this function

cachesolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
