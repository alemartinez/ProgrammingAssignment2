## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

###MY COMMENTS
##These functions are practically the same as the Prof. Peng ##published. I just changed the prototypes, renamed the variables
##and changed the function mean to solve()
##For that, R is that awesome.
##Sorry if it looks lazy, it didn't look like it needed more changes.

###
##The function does the same as Prof. Peng does. only difference here is the renaming of variables
##A Matrix with with get and set of the matrix to calculate the inverse; as well as get and set of the inverse.


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


## Write a short comment describing this function

###MY COMMENTS
## This functions gets the inverted matrix. If available 
## it returns the result without calculating it; if not, it calculates it

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
