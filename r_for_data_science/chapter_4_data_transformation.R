##### Data Transformation - Using dplyr ####

library(nycflights13)
library(tidyverse)

# sample dplyr Code
flights |> 
  filter(dest == "IAH") |> 
  group_by(year, month, day) |>
  summarise(
    arr_delay = mean(arr_delay, na.rm = TRUE)
  )

#### ROWS ####
#### FILTER(): ####
### Using filter() - selects rows based on the values of the columns ###
flights |> 
  filter(dep_delay > 120) # flights that delayed more than 120days

jan_feb <- flights |> 
  filter(month %in% c(1,2))


#### ARRANGE(): ####
### arrange() changes the order of the rows based on the value of the columns ###
flights |> 
  arrange(year, month, day, dep_time)

# you can use desc() on a column inside of arrange() to reorder the data in descending order

flights |> 
  arrange(desc(dep_delay), year)
#NB: arrange() does not filter, it only arranges.


#### DISTINCT(): ####
### distinct() finds all the unique rows in a dataset ###
### Most of the time, however, you’ll want the distinct combination of some variables ###

flights |> 
  distinct() #Finds all distict rows in the dataset

flights |> 
  distinct(origin, dest, .keep_all = TRUE) #To keeps other colomns when filtering for distinct values, use the .keep_all argument.

#To find number of occurances, use count() function
flights |> 
  count(origin, dest, sort = TRUE)



##################################################################
#### COLUMNS ####
# There are four important verbs that affect the columns without changing the rows: 
# mutate() creates new columns that are derived from the existing columns, 
# select() changes which columns are present, 
# rename() changes the names of the columns, and 
# relocate() changes the positions of the columns.


#### MUTATE(): ####
### mutate() adds new columns that are calculated from the existing columns.

flights |> 
  mutate( 
    gain = dep_delay - arr_delay,
    speed = distance / (air_time / 60),
    .before = 1 # .before and/or .after to rearrange mutated coloumns.
  )

flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / (air_time / 60),
    .after = day #columns names can be used instead of numbers
  )

# Use .keep = "used" to keep only columns used in the mutate function
delay_gain <- flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    hours = air_time / 60,
    gain_per_hour = gain / hours,
    .keep = "used"
  )

#### SELECT(): ####
### select() selects certain colouns in your dataset to zoom in on.
flights |> 
  select(year, month, day)

flights |> 
  select(year:day) #select columns from year to day

flights |> 
  select(!year:day) #all colomns except from year to day

flights |> 
  select(where(is.character)) #select all columns that are characters

# Read about other helpers (everything(), starts_with(), ends_with(), contains(), etc.)


#### RNAME(): ####
### rename() used to change coloumns names
# .
