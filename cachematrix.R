## Put comments here that give an overall description of what your
## functions do
## The functions cache the inverse of a give matrix. When a matrix is provided,
## it will be checked whether the inverse has been caltuated. If there its
## inverse has been calcuated and cached, the cached inverse will be returned.
## If not, the inverse will calculated and returned.

## Write a short comment describing this function
## This function creates a special "matrix", 
## which is really a list containing a function to: 
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse
## The function can mark whether the inverse of given matrix has been calculated
## and store the inverse if it has been calculated.

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y){
                x <<- y
                s <<- NULL
        }
        get <- function() 
                x
        setsolve <- function(solve) 
                s <<- solve
        getsolve <- function()
                s
        lits(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function
## The function computates the list retured by the function above and check if
## the inverse has been calculated. If so, it get the cached inverse and return;
## if not, it calculate the inverse and store it in the list above.

cacheSolve <- function(x, ...) {
        s <- x$getsolve()
        if(!is.null(s)){
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
        ## Return a matrix that is the inverse of 'x'
}
