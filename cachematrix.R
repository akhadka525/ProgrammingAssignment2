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


## The function  "cacheSolve" computes the inverse of the special "matrix"
## returned by the function "makeCacheMatrix". If the inverse has been already
## calculated then this function retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Get the inverse of the matrix x
        mat <- x$getinverse()
        
        ## Return the inverse if it is already cached
        if(!is.null(mat)){
                message("getting cached data")
                return(mat)
        }
        
        ## Get the data from x
        data <- x$get()
        
        ## Calculate the inverse of x
        mat <- solve(data)
        
        ## Set the inverse of x
        x$setinverse(mat)
        
        ## Return matrix
        mat
}
