## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  sol <- NULL
  set <- function(y){
    x <<- y
    sol <<- NULL
  }
  
  get <- function() x
  setsolve <- function(solve) sol <<-solve
  getsolve <-function() sol
  list ( set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## Write a short comment describing this function
##1. set the value of the matrix
##2. get the value of the matrix
##3. set the value of the inverse
##4. get the value of the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        sol <- x$getsolve()
        if(!is.null(sol)){
          message("getting inverse matrix!")
          return (sol)
        }
        data <- x$get()
        sol <- solve(data,...)
        x$setsolve(sol)
        sol
        
}
