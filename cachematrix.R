## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    ## Initialize the inverse property
    inv <- NULL

    ## Method to set the matrix
    set <- function( matrix ) {
            m <<- matrix
            inv <<- NULL
    }
    get <- function() {
    	m
    }
    setinv <- function(inverse) {
    	inv <<- inverse
    }
    getinv <- function() {
    	inv
    }
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	m <- x$getinve()
	if( !is.null(m) ) {
            message("getting cached data")
            return(m)
	}
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
