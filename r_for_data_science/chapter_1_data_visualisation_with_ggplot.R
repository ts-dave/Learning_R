library(dplyr)
library(ggplot2)

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
