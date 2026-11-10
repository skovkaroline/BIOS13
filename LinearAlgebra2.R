rm(list = ls())

## Q3
# define a matrix X
X <- matrix(c(1,1,2,0), nrow=2, ncol=2)
X

# calculate the determinant, det(X)
det_X <- X[1,1]*X[2,2] - X[1,2]*X[2,1]
det_X
# [1] -2

# calculate the two eigenvalues 
# det(X - lambdaI) = 0 --> gives the eigenvalues 

# (1-lambda)*(0-lambda)-(2*1) = 0
# lambda^2 - lambda - 2 = 0
# (lambda - 2)(lambda + 1) = 0
# lambda = 2 or -1

E <- eigen(X)

E$values

# confirm that determinant is equal to the product of eigenvalues
2 * -1
# [1] -2
det_X
# [1] -2

# what are the corresponding eigenvectors, v1 and v2? 
E$vectors
#[0.894] [-0.707]
#[0.447] [0.707]

# confirm that Xv1 = lambda1v1, and that Xv2 = lambdav2
v1 <- E$vectors[,1]
v2 <- E$vectors[,2]

lambda1 <- E$values[1]
lambda2 <- E$values[2]

X %*% v1
lambda1 %*% v1

X %*% v2
lambda2 %*% v2
