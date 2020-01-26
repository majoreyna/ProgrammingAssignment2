## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#The first function, makeVector creates a special "vector", which is really a list containing a function to

makeCacheMatrix <- function(x = matrix()) {
  vari <- NULL
  set <- function(y) {
    x <<- y
    vari <<- NULL
  }
  get <- function() x
  setmean <- function(mean) vari <<- mean
  getmean <- function() vari
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}



## Write a short comment describing this function
#the following function calculates the mean of the special "vector" created with the above function. 

cacheSolve <- function(x, ...) {
  vari <- x$getmean()
  if(!is.null(vari)) {
    message("getting cached data")
    return(vari)
  }
  data <- x$get()
  vari <- mean(data, ...)
  x$setmean(vari)
  vari
}
