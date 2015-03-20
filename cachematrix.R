## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
cache <- NULL
setmatrix <- function(y){
x <<- y
cache <<- NULL
}
## set the value of matrix
getmatrix <- function() x
## get the value of matrix 
cacheinverse <- function(inverse) cache <<- inverse
## set the matrix inverse as cache 
getinverse <- function() cache
## get the cache value
list(setmatrix = setmatrix, getmatrix = getmatrix, cacheinverse = cacheinverse, getinverse = getinverse)
## return the list
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inverse <- x$getinverse()
##get the cache value
if(!is.null(inverse)){
message("getting cached data")
return(inverse)
## return the cache value if it exists 
}
data <- x$getmatrix()
inverse <- solve(data)
x$cachemnverse(inverse)
inverse
        ## Return a matrix that is the inverse of 'x'
}
