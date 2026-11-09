## 1 ## # updated
mymax <- function(x, y) {
  x <- as.numeric(readline(prompt = "Input x: "))
  y <- as.numeric(readline(prompt = "Input y: "))
  if(x > y) {
    return(x)
  }
  else {
    return(y)
  }
}

mymax() ## CHECK ##

## 2 ## 
weighted_sum <- function(v, w) {
  v <- c(3, 4, 5)
  w <- c(1, 2, -1)
  x <- as.numeric(6)
  for(i in 1:3){
    x[i] <- v[i] * w[i]
  }
  return(sum(x))
}

weighted_sum() ## CHECK ##

## 3 ##
fib <- function(n) {
  num <- as.numeric(n)
  num[1] <- 1
  num[2] <- 1
  
  for(i in 3:n) {
    num[i] <- num[i-1] + num[i-2]
  }
  return(num)
}  

fib(10) ## CHECK ##    

## 4 ##
# a & b #
plotmax <- function(n) {
  v <- runif(n)
  return(v)
}

plotmax(5)

# c #
plotmax <- function(n) {
  v <- runif(n)
  plot <- plot(1:n, v, type = "l", col = "blue")
  return(plot)
}

plotmax(5)

# d #
plotmax <- function(n) {
  v <- runif(n)
  
  plot <- plot(1:n, v, type = "b", col = "blue")
  
  for(i in 2:n) {
    if(v[i] > v[i-1] &&
       v[i] > v[i+1]) {
      points(i, v[i],
             col = "red",
             pch = 4)
    }
  }
  return(plot)
}

plotmax(5)

# e # 
plotmax <- function(n) {
  v <- runif(n)
  v1 <- c()
  v2 <- c()
  plot <- plot(1:n, v, type = "b", col = "blue", 
               xlab = "Position",
               ylab = "Value")
  
  for(i in 2:(n-1)) {
    if(v[i] > v[i-1] &&
       v[i] > v[i+1]) {
      points(i, v[i],
             col = "red",
             pch = 4)
      v1 <- c(v1, i)
      v2 <- c(v2, v[i])
    }
  }
  return(list(v1, v2))
}

plotmax(10) ## CHECK ## 

## 5 ##
is_palindrome <- function(name) {
  n <- nchar(name)
  for(i in 1:n) {
    if(substr(name, 1, 1) == substr(name, n, n)){
      return("TRUE")
    }
    else {
      return("FALSE")
    }
  }
}

is_palindrome("anna") ## CHECK ## 

## 6 ## 
sort_v <- function(x,y) {
  v <- c(x,y)
  return(sort(v))
}

sort_v(5,4)

rm(sort_v) 

sort_v <- function(v1, v2) {
  v1 <- as.numeric(v1)
  v2 <- as.numeric(v2)
  v3 <- c(v1, v2)
  return(sort(v3))
}
 
sort_v(c(3,2,4), c(1,6)) ## CHECK ##

## 7 ##
x <- seq(-pi, pi, length.out = 100)

old_par <- par(mfrow = c(1,2))
plot(x, sin(x), type = "l",
     main = "Sine")
plot(x, cos(x), type = "l",
     main = "Cosine")
par(old_par) ## CHECK ##

## 8 ##







