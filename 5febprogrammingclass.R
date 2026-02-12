
#Vectors
apple <- c("red", "blue", "yellow", 200, 30)

myvec <- c(1, 2, 3 , 4, 5)

# Length of a vector
# use [length()] to check length of vector
try_vector <- c("aa", "bb", "cc", "dd", "ee")
print(length(try_vector))


# Lists
list1 <- list(c(2, 5, 3), 21.3, "sin")
print(list1)


# Matrix
# when declaring 
m <- matrix(c("a", "a", "b", "c", "b", "a"), nrow = 2, ncol = 3, byrow = TRUE)
print(m)

m_example <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), nrow = 3, ncol = 4, byrow = TRUE)
print(m_example)

# you can replace the vector 1 to 12 with seq(1,12)
m2 <- matrix(c(seq(5, 60, 5)), nrow = 3, ncol = 4, byrow = TRUE)
print(m2)

# 3 by 5 matrix starting from 20 to 6, with multiples 
# SHE USED BYROW FALSE AND IT STILL WORKED, ASK PROF
m3 <- matrix(c(seq(20, 6)), 3, 5, byrow = TRUE)
print(m3)











