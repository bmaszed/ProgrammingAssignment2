## A pair of functions that can cache inverse of a matrix.

## The first function creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
i <- NULL
        
        set <- function(y) {
        x <<- y
        i <<- NULL
        }
        
get <- function(x) 
setInverse <- function(inverse)
i <- inverse
getInverse <- function(i) 
        
list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse,)
}




## This function computes the inverse of the matrixL: makeCacheMatrix.

## If the inverse has already been calculated (and the matrix remains unchanged),
## then the inverse is retrieved from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        i <- x$getInverse()
        if (!is.null(i)) {
        message("Getting cached data.")
                return(i)
        }
        
        matrix <- x$get()
        i <- solve(matrix, ...)
        x$setInverse(i)
        i
}
