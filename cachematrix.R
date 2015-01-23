##Pair of functions that calculate and cache the inverse of a Matrix.

##These functions are practically the same as the Prof. Peng published. I just changed the prototypes as requested,
##renamed the variables and changed the function mean() to solve(). For that, R is that awesome.
##Please don't misunderstand me. Sorry if it looks lazy, I just made the minimal changes in order for the function to
##work as requested and be comprehensible (don't want to left "means" everywhere)




##This function "makeCacheMatrix" does the same as Prof. Peng's vector does. 
##The only difference here is the renaming of variables. A Matrix with 
##get and set of the matrix to calculate its inverse, as well as get and set of the inverse matrix.


makeCacheMatrix <- function(x = matrix()) {
  invMat <- NULL
  set <- function(y) {
    x <<- y
    invMat <<- NULL
  }
  get <- function() x
  setInvMat <- function(solvedMat) invMat <<- solvedMat
  getInvMat <- function() invMat
  list(set = set, get = get,
       setInvMat = setInvMat,
       getInvMat = getInvMat)
}




## This function calculates the inverted matrix if not previously calculated; if already calculated, it returns it
##It's necessary a cacheMatrix as input.

##I just changed mean() for solve(), and used the renamed get and set for the result.  

cacheSolve <- function(x, ...) {
  invMat <- x$getInvMat()
  #If not null, mean already calculated, just printed
  if(!is.null(invMat)) {
    message("getting cachemaked data")
    return(invMat)
  }
  
  data <- x$get()
  invMat <- solve(data)
  x$setInvMat(invMat)
  invMat
}
