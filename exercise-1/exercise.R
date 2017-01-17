# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahwaks <- rnorm(5)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points <- rnorm(5)

# Combine your two vectors into a dataframe
versus <- data.frame(points,seahwaks)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
dif <- abs(points-seahwaks)
versus <- data.frame(seahwaks,points,dif)

# Create a new column "won" which is TRUE if the Seahawks won
won <- seahwaks>points
versus <- data.frame(seahwaks,points,dif,won)

# Create a vector of the opponent names corresponding to the games played
opponents <- letters[1:21]

# Assign your dataframe rownames of their opponents
rownames(versus) <- opponents

# View your data frame to see how it has changed!
View(versus)
