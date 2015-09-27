## Unfortunately, my family showed up today, and I doubt I'll have time to finish the
## assignment

## What is represented below is an initial shell I created to get started.
## To whomever is grading this, I don't want you to waste your time trying to figure out if
## it runs. It's not anywhere near my finished product.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function(x)
        setinverse <- function(solve(x)) m <<- solve(x)
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This should have worked with my cached data.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setinverse(m)
        m
}
