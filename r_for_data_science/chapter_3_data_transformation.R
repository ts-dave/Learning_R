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

#### FILTER(): ####
### Using filter() - selects rows based on the values of the columns ###
flights |> 
  filter(dep_delay > 120) # flights that delayed more than 120days

jan_feb <- flights |> 
  filter(month %in% c(1,2))


#### ARRANGE(): ####
### arrange() changes the order of the rows based on the value of the columns ####
flights |> 
  arrange(year, month, day, dep_time)

# you can use desc() on a column inside of arrange() to reorder the data in descending order

flights |> 
  arrange(desc(dep_delay), year)
#NB: arrange() does not filter, it only arranges.