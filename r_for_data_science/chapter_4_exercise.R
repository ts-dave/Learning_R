library(nycflights13)
library(tidyverse)

flights <- flights

# Exercises
# In a single pipeline for each condition, find all flights that meet the condition:

# Had an arrival delay of two or more hours
# Flew to Houston (IAH or HOU)
# Were operated by United, American, or Delta
# Departed in summer (July, August, and September)
# Arrived more than two hours late, but didn’t leave late
# Were delayed by at least an hour, but made up more than 30 minutes in flight
# Sort flights to find the flights with the longest departure delays. Find the flights that left earliest in the morning.

# Sort flights to find the fastest flights. (Hint: Try including a math calculation inside of your function.)

# Was there a flight on every day of 2013?

# Which flights traveled the farthest distance? Which traveled the least distance?

# Does it matter what order you used filter() and arrange() if you’re using both? Why/why not? Think about the results and how much work the functions would have to 

############################################
#### SOLUTION ####

#### 1 ####
flights |> 
  filter(arr_delay >= 120)

flights |> 
  filter(dest %in% c("IAH", "HOU")) 

flights |> 
  filter(carrier %in% c("AU", "AA", "DL"))

flights |> 
  filter(month %in% c(7:9))

flights |> 
  filter(arr_delay > 120 & dep_delay <= 0)
 
flights |> 
  filter(dep_delay >= 60 & dep_delay - arr_delay > 30)


#### 2 ####
# Flights with longest departure delays. Flights that left
# earliest in the morning.
flights |> 
  arrange(desc(dep_delay)) |> 
  arrange(dep_time)

#### 3 ####
# Fastest flights, measured in miles per hour:
flights |> 
  mutate(speed = distance / (air_time / 60)) |> 
  arrange(desc(speed)) |> 
  relocate(speed) |> 
  View()

#### 4 ####
# Was there any flight on evrery day of 2013
flights |> 
  distinct(year, month, day) |> 
  nrow()

#### 5 ####
# Flights that travelled farthest distance
flights |> 
  arrange(desc(distance)) |> 
  relocate(distance)
# Flights that travelled least distance
flights |> 
  arrange(distance) |> 
  relocate(distance)

