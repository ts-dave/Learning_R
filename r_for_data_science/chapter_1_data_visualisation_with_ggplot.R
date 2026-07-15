library(tidyverse)


# CREATING A PLOTS USING GGPLOT2

# TEMPLATE
# ggplot(data = <DATA>) + 
#   <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# ADD COLOR AND GIVE THE VARIABLE  ON WHICH COLOR SHOULD BE APPLIED
# GGPLOT AUTOMATICALLY ADDS DIFFERENT COLORS TO DIFFERENT VALUES OF THE VARIABLE
# AND ALSO ADDS A LEGEND TO EXPLAIN.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))


# IF THE COLOR IS TAKE OUT OF THE AES INTO THE GEOPOINT FUNCTION, IT AFFECTS ENTIRE GRAPH
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "Blue")

### ADDING FACETS
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 2)

# TO USE MORE THAN ONE VARIABLE FOR FACETS, USE FACET_GRID
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, hwy, y = color = class)) +
  facet_grid(drv ~cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
  facet_grid(. ~cyl)


# geom_smooth() IS A SMOOTE LINE GRAPH. 
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# ADDING LINE TYPE FOR DIFFERNT CATEGORIES
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

# ADDING COLOR FOR DIFFERENT CATEGORIES
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv), 
  show.legend = FALSE  #THIS LINE REMOVES LEGEND FROM CHART
)

# TO ADD MULTIPLE GEOMS TO GGPLOT, JUST ADD MULTIPLE GEOM FUNCTONS
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))


# APPLY MAPPINGS IN ggplot FUNCTION TO AFFECT ENTIERE GRAPH
# THEN OVERRIED THAT IN EACH geom_ FUNCTION TO APPLY LOCAL SPECIFIC MAPPPINGS
# GRAMP ABOVE CAN BE REWRITTEN AS..
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

# APPLYING FILTER THAT ONLY AFFECTS THE geom_smooth FUNCTION
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(
    data = filter(mpg, class == "subcompact"),
    se = FALSE
  )


## EXERCISE ##
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = drv)
) + 
  geom_point() + 
  geom_smooth(se = FALSE)


##### BAR CHARTS/GRAPHS #####
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))


####### EVERYTHIN ABOVE WAS FOR THE FIST EDITION OF THE BOOK.
##############################################################################
##############################################################################
##############################################################################

###### NOW STARTING WITH THE SECOND EDITION
library(tidyverse)

penguins
glimpse(penguins)
str(penguins)

#ggplot() takes the data to work with and that creates an empty canvas
ggplot(data = penguins) 

# mapping aesthetics to show what's on x and y axes.
ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass)
) 

# adding a scatter plot layer
ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass)
) 

# adding color difference to species
ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass, color = species)
) + 
  geom_point()

# adding line of best fit based on a linear model with method = "lm"
ggplot(
  data = penguins,
  mapping = aes(x =flipper_len, y = body_mass, color = species)
) +
  geom_point() +
  geom_smooth(method = "lm")

# specifying color and shape for geom_point() only. so it doesn't affect the line.
ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm", se = FALSE)

# Adding labels and finishihg touches with the lab() layer.
ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass)) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap and Gentoo Penguins",
    x = "Flipper length (mm)",
    y = "Body mass (g)",
    color = "Species",
    shape = "Species"
  ) 


ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass)
) + 
  geom_point(
    mapping = aes(color = species, shape = species)
  ) +
  geom_smooth(se = FALSE)


## VISUALIZING CATEGORIACAL VARIABLES (BAR GRAPH) ## 
ggplot(penguins, aes(x = species)) +
  geom_bar()

## VISUALIZING CONTINUOUS VARIABLES (HISTOGRAM) ## 
ggplot(penguins, aes(x = body_mass)) +
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(x = body_mass)) +
  geom_density()


## VISUALIZING RELATIONSHIPS ##
### IN VISUALIZING RELATIONSHIPS, 2 VARIABLES HAVE TO BE MAPPED IN AESTHETICS
#### A NUMERICAL AND A CATEGORICAL VARIABLE
