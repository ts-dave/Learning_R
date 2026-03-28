
payee_tax <- function(income) {
  total_tax <- 0
  
  if (income <= 402) {     
    total_tax <- 0
    
  } else if (income <= 512) {   
    total_tax <- (income - 402) * 0.05
    
  } else if (income <= 642) {    
    total_tax <- 5.5 + (income - 512) * 0.10
    
  } else if (income <= 3642) { 
    total_tax <- 18.5 + (income - 642) * 0.175
    
  } else if (income <= 20037) {
    total_tax <- 543.5 + (income - 3642) * 0.25
    
  } else if (income <= 50000) {
    total_tax <- 4642.25 + (income - 20037) * 0.30
    
  } else {
    total_tax <- 13631.15 + (income - 50000) * 0.35
  }

  return(total_tax)
}


print(payee_tax(5000))


# TODO: Refactor the payee_tax function so that the values and tax rates 
# can be dynamic, not hard coded in to the fucntion.


# A FAME LOOP FOR CALLING PAYEE FUNCTION
while (TRUE) {
  income <- suppressWarnings(as.numeric(readline(prompt = "Please enter you salary amount: ")))
  
  if (income == 0) {
    break
  }
  print(payee_tax(income))
}














