## Put comments here that give an overall description of what your
## functions do


##The first function makeCacheMatrix creates a special "matrix"

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



#Compute the inverse of the special matrix above
#If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x) {
  vari <- x$getinverse()
  if(!is.null(vari)) {
    message("getting cached data")
    return(vari)
  }
  data <- x$get()
  vari <- solve(data)
  x$setinverse(vari)
  vari
}
