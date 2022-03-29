makeCacheMatrix <- function (x=matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
    ## adds x and inv to the cache
  }
  ## sets the value of the matrix
  get <- function() x
  ## gets the value of the matrix
  setInv <- function(solve) inv <<- solve
  ## sets the value of the inverse
  getInv <-function() inv
  ## gets the value of the inverse
  list(set = set, get=get, setInv=setInv, getInv=getInv)
  ## creates a vector containing the above 4 functions
}
