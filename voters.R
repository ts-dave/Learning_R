url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

#accessing a column
voters$voter_category
#use [unique()] function to get the unique values in the column
unique(voters$voter_category)

unique(voters$Q22)

unique(voters$Q21)

#use [factor] function to list the categories in the column
factor(voters$Q21)

#assign labels to the data using the [factor] function
factor(
  voters$Q21,
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1)
)

unique(voters$Q21)
