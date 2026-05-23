# Practical 1
# Author: Tsatsu Arnong
# Date: 14/05/26

# INSTALLING REQUIREMENTS WITH PACMAN
# if(!require(pacman)) install.packages("pacman")
# pacman::p_load((
#   haven
# ))

whitehall.data <- read.csv("data/Whitehall_fossa.csv", header=TRUE, na.strings = c(""))

nrow(whitehall.data)
