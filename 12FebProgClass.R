

# 12 Feb 2025
#0000000000000000


# A vector is the basic data type in R, contains list of items of the same type
#Vectors
############################
# apple <- c("red", "blue", "yellow", 200, 30)
# myvec <- c(1, 2, 3 , 4, 5)
#
# try_vector <- c("aa", "bb", "cc", "dd", "ee")
# print(length(try_vector))


#Matrices
############################
# A matrix is 2-dimensional data of the same type. like table with rows and columns
# m <- matrix(c("a", "a", "b", "c", "b", "a"), nrow = 2, ncol = 3, byrow = TRUE)
# print(m)

# m_example <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), nrow = 3, ncol = 4, byrow = TRUE)
# print(m_example)

# you can replace the vector 1 to 12 with seq(1,12)
# m2 <- matrix(c(seq(5, 60, 5)), nrow = 3, ncol = 4, byrow = TRUE)
# print(m2)

# 3 by 5 matrix starting from 20 to 6, with multiples
# SHE USED BYROW FALSE AND IT STILL WORKED, ASK PROF
# m3 <- matrix(c(seq(20, 6)), 3, 5, byrow = TRUE)
# print(m3)


# Lists
############################
# A list is an ordered collection of objects, like vectors,
# but lists can actually combine objects of different types.

# list1 <- list(c(2, 5, 3), 21.3, "sin")
# print(list1)
#
# thislist <- list("apple", "banana", "cherry")
# thislist[1]
# thislist[2]


# 12 Feb 2025
#0000000000000000

# Arrays
#############################

# Array like vectors, vectors are 2 dimensional and array more than 2 dimensions
# Note: Arrays can only have one data type.
# dim = c(num_rows, num_cols, num_arrays)

# a <- array(c('green', 'yellow'), dim = c(3, 3, 2))
# print(a)
#
#
# b <- array(c('green', 'yellow'), dim = c(3, 3, 3))
# print(b)



# Factor
############################
# Factors are used to categorize data. Examples of factors are:
#Demography: Male/Female
#Music: Rock, Pop, Classic, Jazz
#Training: Strength, Stamina
#First create a vector

# apple_colors <- c("green", "green", "yellow", "red", "red", "red", "green")
# #
# # # now create a factor from the vector
# factor_apple <- factor(apple_colors)
# print(factor_apple)
# print(nlevels(factor_apple))


#Data frame
###########################
# Data Frames are data displayed in a format as a table.
# Data Frames can have different types of data inside it.
# DATAFRAME - Just like vector but tabular and can contain different kinds of data types

# bmi <- data.frame(gender=c("male", "male", "female"),
#                   height=c(152, 171.5, 165),
#                   weight=c(81, 93, 78),
#                   age=c(42, 28, 36)
#                 )



# bmi <- data.frame(gender=c("male", "male", "female", "male", "female", "male"),
#                   marital_status=c("single", "maried", "divorced", "separated", "co-habiting", "single"),
#                   height=c(152, 171.5, 165, 713, 174, 152),
#                   weight=c(81, 93, 78, 83, 79, 182),
#                   age=c(42, 28, 36, 28, 25, 33)
#                   )
# print(bmi)
# 
#
# print(bmi[5,3])
# print(bmi$height[5])
# print(bmi[5,])
# print(bmi[,3])
# print(bmi$height)



# 19TH FEB 2025
#000000000000000000

# Decisions (If conditions)
############################

# if (condition) {
#   <code to run if condition is met>
# }

# n <- 9
# if (a == 6) {
#   print("Value in a is 6")
# } else {
#   print("Value is a is not 6")
# }
#
#
# a <- 10
#
# if (a %% 2 == 0) {
#   print("Number is even")
# } else {
#   print("Number is odd")
# }
#
# str1 <- "hello"
# str2 <- "Hello"
# if (str1 == str2) {
#   print("The two strings are equal")
# } else {
#   print("The two strings are unequal")
# }
#
#
# n <- 14
# if ((n %% 2 == 0) || (n %% 3 == 0)) {
#   print("Number is even or divisible")
# }
#
# n <- 11
#
# if (!(n %% 2 == 0)) {
#   print("Number is not even")
# } else {
#   print("Number is odd")
# }

# a <- 15
#
# if (a == 6) {
#   print("a is 6")
# } else if (a == 10) {
#   print("a is 10")
# } else if (a == 20) {
#   print("a is 20")
# } else {
#   print("a is neither of the above")
# }
#
# print("End of program")


# Switch Statement
############################
# 
# switch(expression,
#        case1,
#        case2
#        case3
#        ...,
#        default)

# y <- 3
# 
# x <-  switch (y, 
#              "Good Morning", 
#              "Good Afternoon", 
#              "Good Evening", 
#              "Good Night")
# 
# print(x)





# 26TH FEB 2025
#000000000000000000

# LOOPS
############################
# LOOPS ARE USED TO RUN A BLOCK OF CODE REPEATED TIMES
# TWO TYPES, FOR LOOP FOR WHEN YOU KNOW NUMBER OF TIMES TO RUN CODE
# WHILE LOOP WHEN YOU DON'T KNOW THE NUMBER OF TIMES THE ITERATION WILL RUN


# FOR LOOPS
###########

# a <- c(2, 45, 9, 12)
# 
# for (i in a) {
#   print(i)
# }


# numbers <- c(2, 45, 9, 12)
# total <- 0
# 
# for (number in numbers) {
#   total <- total + i
#   print(total)
# }


# names <- c("Afia", "Derry", "Saed", "Abigail", "Mary-Ann")
# 
# for (name in names) {
#   print(name)
# }


# USE BREAK WORD TO BREAK OUT OF A LOOP
# a <- c(2, 45, 9, 12)
# 
# for (i in a) {
#   if (i == 9) {
#     break
#   }
#   print(i)
# }

# USE NEXT WORK JUMP TO NEXT ITERATION
# a <- c(2, 45, 9, 12)
# 
# for (i in a) {
#   if (i == 9) {
#     break
#   }
#   print(i)
# }


# V <- LETTERS[1:6]
# 
# for (i in V) {
#   if (i == "D") {
#     next
#   }
#   print(i)
# }

# USE NEXT WORK JUMP TO NEXT ITERATION
# V <- LETTERS[1:4]
# 
# for (i in V) {
#   print(i)
# }

# fruits <- c("apple", "orange", "pear", "pawpaw")
# for (fruit in fruits) {
#   print(fruit)
# }


# FOR LOOPS
###########

a <- 1

while (a < 5) {
  print(a)
  a <- a + 1
}


a <- 1
b <- 3
while (a < 5) {
  if (a == b) {
    break
  }
  print(a)
  a <- a + 1
}


v <- c("Hello", "while", "loop")
cnt <- 2
while (cnt < 7) {
  
  print(v)
  cnt <-  cnt + 1
}


















