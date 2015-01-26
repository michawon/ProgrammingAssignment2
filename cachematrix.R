##Part 1::
#Generates a list from a function that..

# sets the value of the matrix, 
makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(s){
  x <<- n
  n <<- NULL
  }
#gets the value of the matrix, 
  get <- function()x
#sets the value of the inverse matrix,
  set <- function(set_inverse)n <<- set_inverse
#gets the value of the inverse matrix.
  get_inverse <- function()n
  list(get=get, set=set, get_inverse=get_inverse)}

##Part 2:
#This code: returns the matrix that is the inverse,
cacheSolve <- function(x = matrix()){
  #gets the inverse vale of the matrix,
  i <- x$get_inverse()
#confirms the existence of the matrix,
  if(!is.null(i)){
    print("Searching for data...Retrieving results")
    return(i)
    }
#gets and sets the inverse of the matrix.
    results <- x$get()
    i <- solve(results)
    x$set(i)
    i 
}
