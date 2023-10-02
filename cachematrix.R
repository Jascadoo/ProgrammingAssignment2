## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create a matrix 
makeCacheMatrix <- function(x = matrix()) {     
  ini <- NULL        
  ##set the value of matrix
  set <- function(y){    
    x<<-y
    ini <<- NULL
  }
  ## Get the matrix
  get <- function(){
    x
  }
   ## Set Inverse of the matrix
  setinv <- function(inversed) {   
    ini <<- inversed
  }
  ## Get Inverse of the matrix
  getinv <- function() ini
  list(set = set, get = get, setinv = setinv, getinv = getinv)  
}

## Write a short comment describing this function
## This function gets the matrix value from the makeCacheMartix object and returns the inverted matrix to the object again 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ini <- x$getinv()
  if(!is.null(ini)){
    message("getting cached data")
    return(ini)
  }
  ninv <- x$get()
  ini <- solve(ninv,...)
  ## Set the inversed matrix to object makeCacheMartix
  x$setinv(ini)
  ini
}
