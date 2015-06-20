## pair of functions that cache the inverse of a matrix.


    makeVector <- function(x = numeric()) {
            m <- NULL
            set <- function(y) {                  # 1.  set the value of the vector
                    x <<- y
                    m <<- NULL
            }
            get <- function() x                   # 2.  get the value of the vector
            setsolve <- function(solve) m <<- solve  # 3.  set the value of the solve
            getsolve <- function() m               # 4.  get the value of the solve
            list(set = set, get = get,
                 setsolve = setsolve,
                 getsolve = getsolve)
    }



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