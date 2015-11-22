github.com/carloseduardosototabora/ProgrammingAssignment2/edit/master/cachematrix.R
## Put comments here that give an overall description of what your
## functions do
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  setInv <- function(Inverse) inv <<- Inverse
  getInv <- function() inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

## Write a short comment describing this function
This function works in manner that we call the function X and y with the get and set command in order to create the list which will allow us 
to call the set and get function when performing the calculation for the inverse matrix . 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Inv <- x$getInverse()
  if(!is.null(Inv)) {
    message("getting Inverse from cached data")
    return(Inv)
  }
  matrix <- x$get()
  Inv <- solve(matrix)
  x$setInverse(Inv)
  Inv
}

