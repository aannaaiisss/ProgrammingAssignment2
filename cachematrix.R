## pair of functions that cache the inverse of a matrix.
#The first function, `makeMatrix` creates a special "Matrix", which is
#really a list containing a function to

#1.  set the value of the Matrix
#2.  get the value of the Matrix
#3.  set the value of the solve
#4.  get the value of the solve

    makeMatrix <- function(x = numeric()) {
            m <- NULL
            set <- function(y) {                  # 1.  set the value of the Matrix
                    x <<- y
                    m <<- NULL
            }
            get <- function() x                   # 2.  get the value of the Matrix
            setsolve <- function(solve) m <<- solve  # 3.  set the value of the solve
            getsolve <- function() m               # 4.  get the value of the solve
            list(set = set, get = get,
                 setsolve = setsolve,
                 getsolve = getsolve)
    }


#The following function calculates the solve of the special "matrix"
#created with the above function.

    cachesolve <- function(x, ...) {
            m <- x$getsolve()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- solve(data, ...)
            x$setsolve(m)
            m
    }