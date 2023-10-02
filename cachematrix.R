## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ini <- NULL
  set <- function(y){
    x<<-y
    ini <<- NULL
  }
  get <- function(){
    x
  }
  setinv <- function(inversed) {
    ini <<- inversed
  }
  getinv <- function() ini
  list(set = set, get = get, setinv = setinv, getinv = getinv)  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ini <- x$getinv()
  if(!is.null(ini)){
    message("getting cached data")
    return(ini)
  }
  ninv <- x$get()
  ini <- solve(ninv,...)
  x$setinv(ini)
  ini
}
