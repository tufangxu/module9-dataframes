# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahwaks <- c(50:70)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points <- c(20:40)

# Combine your two vectors into a dataframe
versus <- data.frame(points,seahwaks)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
dif <- abs(points-seahwaks)
versus <- data.frame(seahwaks,points,dif)

# Create a new column "won" which is TRUE if the Seahawks won


# Create a vector of the opponent names corresponding to the games played
opponents <- letters[1:20]

# Assign your dataframe rownames of their opponents
rownames(versus) <- opponents

# View your data frame to see how it has changed!
versus