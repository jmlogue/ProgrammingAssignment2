## The file is intended to included two functions as part of a programing assigment.
##The first fuctions creates a special matrix object that can cache its inverse. The second function
##computes


##This is a funtion that puts the inverse of a matrix in chache memmory. 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)

}


## This function looks to see if the inverse of the matrix already exists by checking to see if the varible is a
## null. If it is not, it finds the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
