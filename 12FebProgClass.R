
# 12 Feb 2025
########### ARRAYS ##############################

# Array like vectors, vectors are 2 dimenstional and array mor than 2 dimensions

# dim = c(num_rows, num_cols, num_arrays)
# a <- array(c('green', 'yellow'), dim = c(3, 3, 2))
# print(a)
# 
# 
# b <- array(c('green', 'yellow'), dim = c(3, 3, 3))
# print(b)


# NB: READ ON VECTOR, ARRAY, LIST, MATRIX, FACTOR, AND ALL DATA TYPES IN R PROGRAMMING



########### Factors ################# 

# First create a vector

# apple_colors <- c("green", "green", "yellow", "red", "red", "red", "green")
# 
# # now create a factor from the vector
factor_apple <- factor(apple_colors)
print(factor_apple)
print(nlevels(factor_apple))


DATAFRAME - Just like vector but tabular and can contain different kinds of data types
TABULAR DATA OBJECTS

bmi <- data.frame(gender=c("male", "male", "female"),
                  height=c(152, 171.5, 165),
                  weight=c(81, 93, 78),
                  age=c(42, 28, 36)
                )



bmi <- data.frame(gender=c("male", "male", "female", "male", "female", "male"),
                  marital_status=c("single", "maried", "divorced", "separated", "co-habiting", "single"),
                  height=c(152, 171.5, 165, 713, 174, 152),
                  weight=c(81, 93, 78, 83, 79, 182),
                  age=c(42, 28, 36, 28, 25, 33)
                  )
print(bmi)




