### A: Variables and Labels # updated
tigers <- 10
lions <- tigers + 12

ls()

tigers <- 15
lions

# lions is still 22 because I haven't reassigned the lions variable. 

names(tigers) <- "The numbers of tigers in this jungle"  
names(tigers)

tigers2 <- tigers * 2
tigers2
unname(tigers2)

### B: Expressions
a <- 4
b <- 7

a^b
sin(a) + exp(b)
b*sqrt(a)
pi*log(a + b)

### C: Vectors
rep(2, 3)

seq(2, 10, by = 2)

seq(0, 300, by = 3)

c(2, 3, 2, 3, 2, 3)

seq(0.5, 2.0, by = 0.1)

seq(11, 27, length.out = 23)

seq(8, -1, by = -1)

u <- seq(5, 100, by = 5)
u

u[3] <- 0
u[7] <- 0
u

u[u > 50] <- -3
u

u + 7

### D: Writing Scripts
# 20
greet <- function() {
  name <- readline(prompt = "Write your name: ")
  if(substr(name, 1, 1) == "P") {
    cat("Hello, ", name, "\n")
  }
}

greet()

# 22
temperature <- function() {
  f <- as.numeric(readline(prompt = "Type temperature in Fahrenheit: \n"))
  c <- (f - 32) / 1.8
  cat(f, "degrees Fahrenheit = ", c, "degrees Celsius \n")
}

temperature()

# 23
N <- function() {
  numbers <- scan(nmax = 5)
  cat(min(numbers), max(numbers))
}

N()

# 24
v <- seq(0, 5, by = 0.2)
v

v2 <- round(v)
v2

plot(v) + lines(v2)


# 25
set.seed(2026)
n <- 20
walk <- numeric(n)
walk[1] <- 0

for(i in 2:n) {
  walk[i] <- walk[i - 1] + rnorm(1)
}

walk

plot(walk, 
     xlab = "Time step",
     ylab = "Position",
     col = "steelblue")

plot(NA, xlim = c(1, n),
     ylim = c(-15, 15),
     xlab = "Time step",
     ylab = "Position")

for (j in 1:5) {
  walk <- c(0, cumsum(rnorm(n-1)))
  lines(1:n, walk, col = j, lwd = 2)
}

# 26 
addvectors <- function() {
  vector1 <- scan(n = 3)
  vector2 <- scan(n = 3)
  vector3 <- numeric(6)
  for(i in 1:3) {
    vector3[2*i - 1] <- vector1[i]
    vector3[2*i] <- vector2[i]
  }
  vector3
}

addvectors()

# 27
addvectors <- function() {
  vector1 <- scan(n = 3)
  vector2 <- scan(n = 3)
  vector3 <- numeric(6)
  for(i in 1:3) {
    vector3[2*i - 1] <- vector1[i]
    vector3[2*i] <- vector2[i]
  }
  vector3
}

addvectors()

# 28
vowels <- function() {
  v <- readline(prompt = "Type a sentence: ")
  if(a & e & i & o & u %in% v ){
   
  }
}

vowels()









