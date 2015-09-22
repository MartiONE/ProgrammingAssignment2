## Put comments here that give an overall description of what your
## functions do
# We are defining 2 auxiliary functions to store and retrieve matrix inverse values from cache.


## Write a short comment describing this function
# This function will create a list with 4 funcionalities for storing in cache a matrix inverse
# Functionalities will be: set matrix, get matrix, set inverse, get inverse . Names are descriptive.

makeCacheMatrix <- function(x = matrix()) {
  matrix <- NULL
  set <- function(y) {
    x <<- y
    matrix <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) matrix <<- solve
  getinverse <- function() matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  

}


## Write a short comment describing this function
# This method will check wether a inverse for this matrix has been already defined or not.
# If it's been already defined will get the result from the cache, if it isn't, will calculate and store it on the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrix <- x$getinverse()
  if(!is.null(matrix)) {
    message("getting cached data")
    return(matrix)
  }
  data <- x$get()
  matrix <- solve(data, ...)
  x$setinverse(matrix)
  matrix
}
