add<-function(a,b){
     a+b
}

add(3,4)

above  <- function(x,n=10){
     print("Default comparison value is 10")
     use <- x>n
     x[use]
}

val <- c(45,22,1,34)
above(val)

columnmean <- function(y){
     nc <- ncol(y)
     means <- numeric(nc)
     for(i in 1:nc){
          means[i] <- mean(y[,i])
     }
     means
}

newmatrix <- matrix(1:20,4,5)
columnmean(newmatrix)

ncc <- ncol(newmatrix)
numeric(ncc)

ls(environment(above))
