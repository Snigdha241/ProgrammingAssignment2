## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


rm(list=ls())
ls()
makeCacheMatrix <- function(x = matrix()) {
        j <- NULL
        set <- function(y){
                x <<- y
                j <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) j <<- inverse
        getInverse <- function() j
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## Write a short comment describing this function


       cacheSolve <- function(x, ...) {

        
        
        j <- x$getInverse()
        if(!is.null(j)){
                message("VOILA CATCH DATA IS AVAILABLE")
                return(j)
        }
        mat <- x$get()
        j <- solve(mat,...)
        x$setInverse(j)
        j
}

}
