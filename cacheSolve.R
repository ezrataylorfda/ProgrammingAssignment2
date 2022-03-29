cacheSolve <- function (x, ...) {
  inv <- x$getInv()
  ## gets the inverse if it has already been calculated
  if(!is.null(inv)) {
    message ("getting cached data")
    return(inv)
  }
  ## message notifying me if the function is pulling cached data
  data <- x$get()
  ## gets the original matrix
  inv <- solve(data,...)
  ## solves the inverse
  x$setInv(inv)
  ## sets the newly solved inverse
  inv
  ##displays the inverse
  ##original_matrix %*% inv returns the identity matrix
}
