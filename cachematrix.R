## This script contains a a pair of functions that cache the inverse of a matrix


## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

    ## Initialize the inverse property
    inv <- NULL

    ## Method to set the matrix
    set <- function( matrix ) {
            m <<- matrix
            inv <<- NULL
    }
    ## Method the get the matrix
    get <- function() {
	## Return the matrix
    	m
    }
    ## Method to set the inverse of the matrix
    setinv <- function(inverse) {
    	inv <<- inverse
    }
    ## Method to get the inverse of the matrix
    getinv <- function() {
    	inv
    }
    ## Return a list of the methods
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}

## The next function computes the inverse of the special matrix returned by the
## function difined above defined. If the inverse has already been calculated 
## (and the matrix has not changed), then the "cachesolve" should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	m <- x$getinve()
	## Just return the inverse if its already set
	if( !is.null(m) ) {
            message("getting cached data")
            return(m)
	}
    ## Get the matrix from our object

    data <- x$get()
    ## Calculate the inverse using matrix multiplication
    m <- solve(data)
	
    ## Set the inverse to the object
    x$setinv(m)
	
    ## Return the matrix
    m
}
