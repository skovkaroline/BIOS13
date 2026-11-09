## Exercise: precedence
2^8

26/7

(26+2^8)/7

26+(2^(8/7))

(26+2)^(8/7)

## Logical operators
# AND (&)
# OR (|)
# NOT (!)

## Sequences
days <- seq(0, 30, by = 5)
days

time <- seq(0, 30, length.out = 10)
time

## Repetitions
treatment <- rep(
  c("Control", "Fertilized"),
  each = 3
)
treatment

## Biological data with vectors
height <- c(12,15, 11, 18, 14)
length(height)
min(height)
max(height)
range(height)
mean(height)
median(height)
sort(height)
sum(height)
cumsum(height)
var(height)
sd(height)

## Vectorized arithmetic
height + 2
height*2
height / 10

before <- c(12, 15, 11, 18, 14)
after <- c(16, 18, 15, 22, 19)
before + after
growth <- after-before
growth

## Vector recycling: two vectors of different length
# repeats shorter vector
x <- c(10, 20, 30, 40, 50, 60)
y <- c(1, 2)
x + y

length(before) == length(after)
length(x) == length(y)

## Indexing vectors
height[1]
height[3]

## Modifying elements in a vector
height[3] <- 13
height

## Selecting multiple elements
height[2:4]
height[c(1,5,2)]
height[-2]
height[-(2:3)]

## Testing conditions
height > 10
all(height > 10)
any(height > 10)

## Logical indexing 
height[height > 14]
height[height > 15] <- NA
height

## Missing values
na.rm = TRUE # excludes missing observations

## Exercise: preparing data for a model
# 1. Create vector v1 with values from 1-7, increasing by 0.5
v1 <- seq(1, 7, by = 0.5)
v1

# 2. Select 3rd, 4th, and 11th elements and store as v2
v2 <- v1[c(3, 4, 11)]
v2

# 3. Replace values in v2 > 2 with 0
v2[v2 > 2] <- 0
v2

# 4. Display final vector using cat(v2)
cat(v2)

## Data frames
plants <- data.frame(
  id = 1:5,
  height = c(12, 15, 11, 18, 14),
  treatment = c("A", "A","B", "B", "B")
)
plants

str(plants)
summary(plants)

plants$treatment <- as.factor(plants$treatment)
summary(plants)

## Strings
species <- "Lithophragma bolanderi"
typeof(species)
species

pollinators <- c("Greya",
                 "Andrena",
                 "Apis")
pollinators

## Lists
experiment <- list(
  species = "Arabidopsis thaliana",
  n_plants = 5,
  height = c(12, 15, 11, 18, 14),
  fertilized = TRUE
)

experiment

## Matrices
A <- matrix(1:4, nrow = 2)
A
B <- matrix(5:8, nrow = 2)
B

A + B
A - B
A * B
t(A)

# Graphs
height <- c(12, 15, 11, 18, 14)
plant <- 1:5

plot(plant, height,
     pch = 16,
     col = "steelblue",
     xlab = "Plant",
     ylab = "Height")

## Exercise: population model
# Time steps
time <- 0:10
time

# Define variables
N0 <- 10
r <- 0.4

# Equation
Nt <- N0 * exp(r*time)

# Vector: growth at each time step
cat(Nt)

plot(time, Nt)

## Flow control
# making decisions: if/else
# repeating instructions: for
# repeating until a condition changes: while
# repeating until stopped: repeat/break

N <- 8

if(N < 10){
  print("Small population")
} else {
  print("Large population")
}

## For loops
for(i in 1:3) {
  print(i)
}

for(h in height){
  cat("Plant height:", h, "cm\n")
}

## While loops
N <- 5

while (N < 10) {
  N <- N + 1
  print(N)
}

# Simulating random events
set.seed(42)

failures <- 0
roll <- sample(1:6, 1)

while(roll!=6) {
  failures <- failures + 1
  roll <- sample(1:6, 1)
}

cat("Failures", failures)

## Repeat and break
set.seed(42)
failures <- 0

repeat (
  roll <- sample(1:6, 1),
  
  if (roll == 6) {
    break
  }
  failures <- failures + 1
)

## Local maxima

## Random walk
