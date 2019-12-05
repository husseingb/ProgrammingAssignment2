## Put comments here that give an overall description of what your
## functions do

## a pair of functions that cache the inverse of a matrix.
## Write a short comment describing this function
##creates a special matrix
makeCacheMatrix <- function(x = matrix()) {
    h <- NULL
    set <- function(y) {
      x <<- y
      h <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) h <<- inverse
    getinverse <- function() h
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function
##computes the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  h <- x$getinverse()
  if (!is.null(h)) {
    message("getting cached data")
    return(h)
  }
  data <- x$get()
  h <- solve(data, ...)
  x$setinverse(h)
  h
}

