## Put comments here that give an overall description of what your
## functions do
## These functions will store the matrix and will cache the inverse of it. 

## Write a short comment describing this function
## cache inverse of the Matrix so you dont need to calculate repeatadly if the matrix is not changed

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
## calculates the inverse of the matrix. If the matrix is already cached then it gets the inverse data from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setInverse(i)
    i
}
