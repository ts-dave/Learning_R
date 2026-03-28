
name <- readline("What is your name? ")
time <- readline("Is it Morning, Afternoon or Evening? ")
greeting <- paste("Hello,", name, sep = "")
greeting_time <- paste("Good,", time)
print(greeting)
print(greeting_time)

  
# Print numbers 1-100, 
# substituting "Fizz" for multiples of 3, 
# "Buzz" for 5, and "FizzBuzz" for both.



numbers <- c(seq(1,100))

for (number in numbers) {
  
  if (number %% 3 == 0 && number %% 5 == 0) {
    print("FizzBuzz")
    
  } else if (number %% 5 == 0){
    print ("Buzz")
    
  } else if (number %% 3 == 0) {
    print("Fizz")
    
  } else {
    print(number)
  }
  
}













