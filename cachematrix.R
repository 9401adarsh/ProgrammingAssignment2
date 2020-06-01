## Function to compute the inverse of a matrix from cache if possible

## Function to create a list of function that makes the Cache matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y)
  {
    x <<- y
    i <<- NULL
  }
  get <- function () x
  setinverse <- function(inverse){
    i <<- inverse
  }
  getinverse <- function() i
  list(get = get, set = set, getinverse = getinverse, setinverse = setinverse)

}


## Function to compute the inverse of matrix returned by makeCacheMatrix() function

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i))
        {
          message("getting cached data")
          return(i)
        }
        data <- x$get()
        i <- solve(data,...)
        x$setinverse(i)
        i
        
}
