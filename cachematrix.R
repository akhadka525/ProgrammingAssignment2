## The pair of functions written below cache the inverse of a matrix
## 

## The function "makeCacheMatrix" creates a special "matrix" object that can 
## cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the variable to store Cache Inverse
        inv <- NULL
        
        ## Define function to set the matrix
        set <- function(matrix){
                x <<- matrix
                inv <<- NULL
        }
        
        ## Define function to get the matrix
        get <- function() x
        
        ## Define function to set the inverse of matrix
        setinverse <- function(inverse) inv <<- inverse
        
        ## Define function to get the inverse of matrix
        getinverse <- function() inv
        
        ## Return list of functions
        list(set = set, get = get, setinverse = setinverse,
             getinverse = getinverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
