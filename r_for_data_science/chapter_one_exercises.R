library(tidyverse)

# Make a scatterplot of bill_depth_mm versus bill_length_mm.
# That is, make a scatterplot with bill_depth_mm on the y-axis and 
# bill_length_mm on the x-axis. Describe the relationship between these two variables.

ggplot(
  data = penguins, 
  mapping = aes(x = bill_len, y = bill_dep)) +
  geom_point() +
  geom_smooth(se = FALSE)


# REWRITING ABOVE CODE IN A CONCISE WAY
ggplot(penguins, aes(bill_len, bill_dep)) +
  geom_point() +
  geom_smooth(se = FALSE)



# REBUILDING THE GRAPH
ggplot(penguins, aes(flipper_len, body_mass)) +
  geom_point(aes(color = bill_dep)) +
  geom_smooth()


ggplot(penguins, aes(x = body_mass)) +
  geom_bar(color = "red")

ggplot(penguins, aes(x = body_mass)) +
  geom_bar(fill = "red")


ggplot(diamonds, aes(x = carat)) +
  geom_histogram()


