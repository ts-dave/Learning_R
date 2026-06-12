
###### VECTORS ######
#--------------------#

## ADDING AND DELETING VECTOR ELEMENTS
# YOU CANNOT DELETE OR ADD ELEMENTS TO VECTORS
# UNLESS YOU ASSIGN A NEW VARIABLE.
x <- c(88, 5, 12, 13)
x <- c(x[1:3], 168, x[4]) #SUBSETTING AND ADDING ELEMENTS
length(x) #OBTAINING LENGTH


## INDEXING VECTORS
# USE NEGATIVE INDEX IN VECTORS TO EXCLUDE ELEMENT ELEMENT 
# AT THAT INDEX FROM THE NEW VECTOR
y <- c(88, 5, 12, 13)
y <- y[-1] #All elements except the first
print(y)
y <- y[-length(y)] #All elements except the last
print(y)


## REPEATINB VECTORS USING rep() function
# rep(x, times)
new <- c(5,12,13)
rep(new,3)
# USE rep(x, each=) TO TO REPEAT EACH ELEMENT NUMBER OF TIMES 
# BEFORE THE NEXT

rep(new, each=4)


## USE all() or any() functions
# ANY REPORTS WHETHER ANY OF THOSE VALUES IS TRUE
# ALL FUNCTIONS WORKS SIMILARLY BUT REPORTS OF ALL 
# VALUES ARE TRUE

x <- 1:10
any(x > 8) # TRUE
any(x > 88) # FALSE
all(x > 88) # FALSE
all(x > 0) # TRUE


## PREDICTING WEATHER

preda <- function(x,k) {
  n <- lenght(x)
  k2 <- k/2
  
  # THE VECTOR pred WILL CONTAIN OUR PREDICTED VALUES
  pred <- vector(length-n-k)
  for (i in 1:(n-k)) {
    if (sum(x[i:(k-1)]) >= k2) {
      pred[i] <- 1
    } else {
      pred[i] <- 0
    }
  }
  return(mean(abs(pred-x[(k+1):n])))
  
}



### VECTORIZED OPERATIONS ###

# ADDIN ONE TO EVERY ELEMENT IN THE VECTOR
u <- c(5,2,8)

w <- function(x) {
  return(x+1)
}

w(u)

# ROUNDING EVERY ELEMENT IN THE VECTOR
y <- c(1.2, 3.9, 0.4)
z <- round(y)
z


### VECTOR IN MATRIX OUT ###

z12 <- function(z) {
  return(c(z, z^2))
}

x <- 1:8
z12(x)

#REWRITING OUTPUT AS METRIX
matrix(z12(x), ncol = 2)


# HANDS-ON PRACTICE
# Trying my hands on vector in, matrix out

# function return number and 2xnumber in vector form
dup <- function(y) {
  return(c(y, y * 2))
}

# calling function
y <- 1:10
dup(y)

matrix(dup(y), ncol = 2) #COERCING OUTPUT INTO VECTOR FORMAT

sapply(y, dup)



### NA AND NULL VALUES ###

# NA
x <- c(88, NA, 12, 168, 13)
x
mean(x)
mean(x, na.rm = TRUE) # remove NA with "na.rm = TRUE"

# NULL
z <- NULL

for (i in 1:10) {
  if (i %% 2 == 0) {
    z <- c(z, i)
  }
}

z

# NB: NULL is a special R object with no code.



### FILTERING ###
z <- c(5, 2, -3, 8)
w <- z[z*z > 8] #filters z for elements when squared greater the 8
w

# filtering and replaciing
a <- c(5, 2, -3, 8)
a[a > 3] <- 0 #replacing elements greater that 3 with 0
a


# using the subset() function
b <- c(5, 2, -3, 8)
subset(b,b > 5)
#NB: subset() removes NA from your result


# using the which() function
z <- c(5, 2, -3, 8)
which(z*z > 8) #which() returns the index for which condition is TRUE



## VECTORIZED IF-THEN-ELSE: THE ifelse() FUNCTION USED IN VECTORS
# ifelse(test, yes, no)
ifelse(b,u,v) #for element i, tests for b[i], returns u[i] if true or v[i] if false
x <- 1:10
y <- ifelse(x %% 2 == 0, 5, 12) #replaces element with 5 if even, 12 if not even
y #returns the modified vector


# USING ifelse() FUNCTION TO MEASURE ASSOCIATION

# findud() converts vector v to 1s, 0s, representing an element
# increasing or not, relative to the previous one; output length is 1
# less than input

findud <- function(v) {
  vud <- v[-1] - v[-length(v)]
  return(ifelse(vud > 0,1,-1))
}

udcorr <- function(x,y) {
  ud <- lapply(list(x,y), findud)
  return(mean(ud[[1]] == ud[[2]]))
}


# REWRITING ABOVE FUNCTONS WITH BUILTIN R FUNCTIONS  - sign(), diff()
udcorr1 <- function(x,y) {
  return(mean(sign(diff(x)) == sign(diff(y))))
}

