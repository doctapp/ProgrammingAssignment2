source("cachematrix.R")
makeCacheMatrixTest <- function() {
        genmat <- function() { matrix(runif(n = 9), 3, 3) }

        m1 <- genmat()

        message("Generate matrix m1")
        cached_m1 <- makeCacheMatrix(m1)

        message("cached_m1$get:")
        print(cached_m1$get())
        
        message("cached_m1$getinv:")
        print(cached_m1$getinv())
        
        message("cacheSolve:")
        print(cacheSolve(cached_m1))
        
        message("cacheSolve:")
        print(cacheSolve(cached_m1))
        
        message("Change matrix")
        cached_m1$set(genmat())

        print(cached_m1$get())
        
        message("cacheSolve:")
        print(cacheSolve(cached_m1))

        message("cacheSolve:")
        print(cacheSolve(cached_m1))
}
