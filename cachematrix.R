
## the below function is taking a matrix and getting its inverse 

makeCacheMatrix <- function(x = matrix()) 
{
    i <- NULL
    set <- function(y)
    {
        x <<- y
        i <<- NULL
        
    }
    get <- function() 
    {
        x
    }
    setinverse <- function(inverse)
    {
        i <<- inverse
    }
    getinverse <- function()
    {
        i
    }
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## the below function calculates the inverse of a matrix, 
##if the inverse of a matrix is already stored in cache then the value is returned from cache itself

cacheSolve <- function(x, ...) 
{
    i <- x$getinverse()
    if(!is.null(i))
    {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    
    i# returning the inverse matrix of a matrix.
}