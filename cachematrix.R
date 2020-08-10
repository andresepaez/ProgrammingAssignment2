## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  

  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  
  get <- function() {
    x
  }
  
  setinverse <- function(inverse) {
    inv <<- inverse
  }
  
  getinverse <- function() {
    inv
  }
  
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

#amatrizz<-makeCacheMatrix(matrix(1:16,nrow = 4,ncol = 4))
#amatrizz$get()
#amatrizz$getinverse()
#cacheSolve(amatrizz)

matribb<-makeCacheMatrix(matrix(1:4,nrow = 2,ncol = 2))
amatribb$get()
amatribb$getinverse()
cacheSolve(amatribb)

