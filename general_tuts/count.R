mario <- as.integer(readline("Enter votes for Mario: "))
peach <- as.integer(readline("Enter votes for Peach: "))
bowser <- as.integer(readline("Enter votes for Bowser: "))

total_votes <- mario + peach + bowser
print(paste("Total votes:", total_votes))