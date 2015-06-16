## pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    # makeVector <- function(x = numeric()) {
            inverse <- NULL
            # m <- NULL
            set <- function(y) {
                    x <<- y
                    inverse <<- NULL
            
            }
            # set <- function(y) {                  # 1.  set the value of the vector
                    # x <<- y
                    # m <<- NULL
            # }
            
            get <- function() x
            # get <- function() x                   # 2.  get the value of the vector
            
            # setmean <- function(mean) m <<- mean  # 3.  set the value of the mean
            solve(x)
            # getmean <- function() m               # 4.  get the value of the mean
            # list(set = set, get = get,
                 # setmean = setmean,
                 # getmean = getmean)
    # }

}


## This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {

    # cachemean <- function(x, ...) {
            # m <- x$getmean()
            # if(!is.null(m)) {
                    # message("getting cached data")
                    # return(m)
            # }
            # data <- x$get()
            # m <- mean(data, ...)
            # x$setmean(m)
            # m
    # }
    
        ## Return a matrix that is the inverse of 'x'
        ##Computing the inverse of a square matrix can be done with the `solve`function in R. For example, if `X` is a square invertible matrix, then`solve(X)` returns its inverse.
}



# Example: Caching the Mean of a Vector

# In this example we introduce the `<<-` operator which can be used to
# assign a value to an object in an environment that is different from the
# current environment. Below are two functions that are used to create a
# special object that stores a numeric vector and caches its mean.

# The first function, `makeVector` creates a special "vector", which is
# really a list containing a function to






# <!-- -->

    # makeVector <- function(x = numeric()) {
            # m <- NULL
            # set <- function(y) {                  # 1.  set the value of the vector
                    # x <<- y
                    # m <<- NULL
            # }
            # get <- function() x                   # 2.  get the value of the vector
            # setmean <- function(mean) m <<- mean  # 3.  set the value of the mean
            # getmean <- function() m               # 4.  get the value of the mean
            # list(set = set, get = get,
                 # setmean = setmean,
                 # getmean = getmean)
    # }

# The following function calculates the mean of the special "vector"
# created with the above function. However, it first checks to see if the
# mean has already been calculated. If so, it `get`s the mean from the
# cache and skips the computation. Otherwise, it calculates the mean of
# the data and sets the value of the mean in the cache via the `setmean`
# function.

    # cachemean <- function(x, ...) {
            # m <- x$getmean()
            # if(!is.null(m)) {
                    # message("getting cached data")
                    # return(m)
            # }
            # data <- x$get()
            # m <- mean(data, ...)
            # x$setmean(m)
            # m
    # }