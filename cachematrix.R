## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL  # assignning null value to variable a 
        set <- function(y){   # function to assign value of y to the variable x
                x <<- y      #assignment expression
                a <<- NULL   # local assignment of the variable a
        }
        get<-function()x    # function to print the value of x
        setInverse<- function(inverse) a<<-inverse  # anonymous function to obtain the inverse 
        getInverse <- function()a   # anonymous function to output the inversed value
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)  # creating a list of functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <- x$getInverse()  # function call to the defined inverse function
        if(!is.null(a)){
                message("getting cached data")
                return(a)
        }
        mat <- x$get    # function call to output the value of x
        a<- solve(mat,...)
        x$setInverse(a)  # function call to inverse the matric
        a # returning the inversed matrix as the final output
}
