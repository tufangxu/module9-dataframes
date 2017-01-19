# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
num <- c(1:100)
employees <- paste("Employee",num,sep = " ")

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
salary2014 <- runif(100,40000,50000)
 
# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
negnum <- runif(100,-300,0)
#runif(num,min,max) - random numbers
salary2015 <- salary2014 - negnum

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries <- data.frame(salary2014,salary2015,stringsAsFactors = F)
rownames(salaries) <- employees


# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- salary2014-salary2015
View(salaries)
# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- (salaries$raise >0)

salaries[,"raise"] <- raise
salaries[, "up"] <- got.raise
salaries$`if there's raise` <-NULL
head(salaries)
### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2015 salary of employee 57 
# [row,col]
salaries[57,"salary2015"]

# How many employees got a raise?
length(salaries$got.raise[salaries$got.raise])
nrow(salaries[salaries$got.raise==T,])

# What was the value of the highest raise?
max(salaries$raise)

# What was the "name" of the employee who received the highest raise?
rownames(salaries[,max(raise))
         
# What was the largest decrease in salaries between the two years?
max <- max(abs(salaries$raise))

# What was the name of the employee who recieved largest decrease in salary?
names <- salaries[salaries$raise==max,"employees"]
# What was the average salary increase?
ave <- mean(raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(salaries,"salay1415.csv")

# For people who did not get a raise, how much money did they lose?
money <- sum(salaries$raise < 0)

# Is that what you expected them to lose based on how you generated their salaries?

