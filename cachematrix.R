## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function makes the cache of the finding inver se of matrix
makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
 # this is the set function
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve # finding inverse and caching
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function
# this function checks if the inverse is already found
cacheSolve <- function(x, ...) {
    m<-x$getmatrix()
    #checking if the inverse is calculated in cache
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    # if it is not present in cache calculating the inverse
    matrix <- x$get() 
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m    ## Return a matrix that is the inverse of 'x'
}
