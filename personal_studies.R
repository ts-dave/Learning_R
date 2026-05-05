## PERSONAL R PROGRAMMING TUTORIALS DURING LONG BREAK ##

hamming <- function(strand1, strand2) {
  distance <- 0
  
  # Check strands have equal length
  if (nchar(strand1) == nchar(strand2)) {
    
    # If strands are empty, return 0
    if (nchar(strand1) == 0)
      return(distance)
    
    # Break strands to list
    chars1 <- strsplit(strand1, split="")[[1]]
    chars2 <- strsplit(strand2, split="")[[1]]
    
    for (index in 1:length(chars1)) {
      
      if (chars1[index] != chars2[index]) {
        distance <- distance + 1
      }
    }
    return(distance)
  } else {
    stop("Error: Both strands must be of equal length")
  }
  
}



strand1 <- ""
strand2 <- ""

hamming(strand1, strand2)