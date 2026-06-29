# Practical 1
# Author: Tsatsu Arnong
# Date: 14/05/26

# INSTALLING REQUIREMENTS WITH PACMAN
# if(!require(pacman)) install.packages("pacman")
# pacman::p_load((
#   haven
# ))

whitehall.data <- read.csv("thegraphcourses/data/Whitehall_fossa.csv", header=TRUE, na.strings = c(""))

nrow(whitehall.data)
ncol(whitehall.data)

class(whitehall.data)
class(whitehall.data$bmi_grp4)
class(whitehall.data$currsmoker)
unique(whitehall.data$currsmoker)
median(whitehall.data$sbp)

str(whitehall.data)
head(whitehall.data, n=5)
tail(whitehall.data, n=5)
summary(whitehall.data)

summary(whitehall.data$sbp)

summary(whitehall.data$bmi_grp4)

str(whitehall.data$bmi_grp4)
summary(whitehall.data$bmi_grp4)



#* CALCULATING STANDARD ERROR OF SBP

SBP.sd <- sd(whitehall.data$sbp, na.rm = TRUE)
SBP.sd <- round(SBP.sd, digits = 3)

SBP.n <- sum(!is.na(whitehall.data$sbp))

SBP.se <- SBP.sd/sqrt(SBP.n)
round(SBP.se, digits = 3)
SBP.mean <- mean(whitehall.data$sbp, na.rm = TRUE)
SBP.mean



## TODO: CALCULATING CONFIDENCE INTERVAL
# TODO: try hands on that
