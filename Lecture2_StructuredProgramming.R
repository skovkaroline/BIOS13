## Exercise: debugging
initial <- c(10, 20, 30, 40)
final <- c(12, NA, 33, NA)

growth <- mean(final, na.rm = TRUE) - 
          mean(initial, na.rm = TRUE)


growth <- final - initial
growth <- mean(growth, na.rm = TRUE)
growth
# look at paired differences first

## Planning
# plan the steps
# comments explain the code

## Exercise: function
# define
add2 <- function(a) {
  result <- a + 2
  return(result)
}

# call
add2(3)
add2(10)
add2(-5)

# to create variable in global environment
result <- add2(2)
result

## Returning multiple results: lists
return(list(
  mean = avg,
  sd = sd
))

## Check results
stopifnot(add2(3) == 5)

## Exercise: simulation to function
simulate_population <- function(N0, r, time) {
  # creating a vector to store population size
   N <- numeric(time + 1)
   
   # set initial population size
   N[1] <- N0
   
   # simulate population growth over time
  for (t in seq_len(time)) {
    N[t + 1] <- N[t] * (1 + r)
  }
   return(N)
}

N <- simulate_population(15, 0.2, 10)
N
plot(0:10, N, type = "l")

## Bubble sort: compare adjacent numbers to sort
# Exercise

# bubble_sort <- function() {
#   x <- c(4, 2, 9, 12)
# repeat{
# for(i in 1:length(x)-1) {
#   if(x[i] > x[i+1]) {
#   i <- 1
#   temp <- x[i+1]
#   x[i+1] <- x[i]
#   x[i] <- temp
#   }
# }
#  if((x[i]>x[i+1])==FALSE)
#    break
# }
#  
#   return()
# }
# 
# bubble_sort()
getwd()

## Bubble sort ## 
bubble_sort <- function(x) {
  swap <- x
  repeat{
    swapped <- FALSE
    for(i in 1:(length(x)-1)) {
      if(swap[i] > swap[i + 1]) {
        temp <- swap[i + 1]
        swap[i + 1] <- swap[i]
        swap[i] <- temp
        
        swaped <- TRUE
      }
    }
    if(swapped == FALSE) break
  }
  return(swap)
}

x<-c(4,2,9,12)

bubble_sort(x)

# another approach
swap <- function(v, i, j) {
  tmp <- v[i]
  v[i] <- v[j]
  v[j] <- tmp
  v
}

swap(c(9,4,3),1,2)

## Reverse vector
reverse_vector <- function(v) {
  reversed <- rev(v)
  return(reversed)
}

reverse_vector(c(1,2,3))

set.seed(12)
u <- rnorm(10)
reverse_vector(u)

## Visualization


