rm(list = ls())
## Exercise 1: owl-rat populations 

# matrix A
A <- matrix(c(0.5, -0.2, 0.3, 1.2), nrow = 2, ncol = 2)
A # values fill up by column

# start population: 2000 owls and 1000 rats
x0 <- c(2000, 1000)

# calculate population next year
x1 <- A %*% x0
x1

x2 <- A %*% x1
x2

# create time series:
x_old <- x1
o_series <- x_old[1, ]
r_series <- x_old[2,]

# run for 10 years
t <- 10

# from the second year:
for(i in 2:t) {
  x_new <- A %*% x_old
  o_series <- c(o_series, x_new[1, ])
  r_series <- c(r_series, x_new[2, ])
  x_old <- x_new
}

o_series
r_series

# plot time series
plot(1:t, o_series, type = "l", col = "blue",
     xlab = "Generations",
     ylab = "Population size")

lines(1:t, r_series, type = "l", col = "red")

points(t, o_series[t], col = "blue")
points(t, r_series[t], col = "red")

text(x = c(t, t),
     y = c(o_series[t], r_series[t]),
     labels = c(o_series[t], r_series[t]))

legend("topleft", c("Owls", "Rats"), fill = c("blue", "red"))

### Exercise 2
rm(list=ls())

## Q1
# define vector u = [3,6,7] and v = [12,13,14] 
u <- c(3, 6, 7)
v <- c(12, 13, 14)

# calculate u + v
u + v
# [1] 15 19 21

# calculate u*v (the scalar product)
u %*% v
#     [,1]
# [1,] 212

# calculate |u|
sqrt((u[1]^2) + (u[2]^2) + (u[3]^2))
# [1] 9.69536

# calculate |v|
sqrt((v[1]^2) + (v[2]^2) + (v[3]^2))
# [1] 22.56103

# calculate |u + v|
w <- u + v
sqrt((w[1]^2) + (w[2]^2) + (w[3]^2))
# [1] 32.04684

## Q2
# define a matrix, B 
B <- matrix(c(1,2,3,0,0,0,4,5,6), nrow=3, ncol=3)
B

# calculate B*u
B %*% u

# calculate B*v
B %*% v

# calculate B(u + v) = Bu + Bv
(B %*% u) + (B %*% v)

# calculate B*B*u
B %*% B %*% u 









