## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# We cannot sum a number with a character string

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# Should load the package with library(stringr)

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial should be initials


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
v1 <- 1:5
typeof(v)
# Type: integer

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  difference <- abs(length(v1)-length(v2))
  return(paste("The difference in lengths is", difference))
}


# Pass two vectors of different length to your `CompareLength` function
v2 <- 1:3
print(CompareLength(v1,v2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1,v2) {
  difference <- length(v1)-length(v2)
  if (difference < 0) {
    return(paste("Your second vector is longer by", abs(difference), "elements"))
  }
  return(paste("Your first vector is longer by", difference, "elements"))
}

# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(v1,v2))
print(DescribeDifference(v2,v1))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1,v2,v3) {
  return(c(v1,v2,v3))
}

# Send 3 vectors to your function to test it.
v3 <- 1:4
print(CombineVectors(v1,v2,v3))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  return(tolower(courses))
}

courses <- c("CSE 143", "INFO 200", "INFO 201")
print(CapsTime(courses))
