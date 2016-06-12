setwd("C:/Data Science Fundation with R/Springboard GitHub")
list.files("C:/Data Science Fundation with R/Springboard GitHub")
titanic <- read.table('titanic_original.csv',header = TRUE, sep = ",")
summary(titanic)

library(mice)
library(VIM)
library(dplyr)
library(ggplot2)

#Checking the missing value from the data, e.g. which variable missing the most data, using library mice(a package in R)
md.pattern(titanic)

#making a missing value figure or plot using library VIM(a package in R)
NAPlot <- aggr(titanic, col=c('navyblue','red'), numbers=TRUE, sortVars=TRUE, labels=names(data), cex.axis=.7, gap=3, ylab=c("Histogram of missing data","Pattern"))

#above two lines of codes are just summary missing data and partten from the data.

#1: Port of embarkation
#somehow is.na and is.null in R can't detect empty value in titanic$embarked so I write this
is.na(titanic$embarked[titanic$embarked =='']) <- TRUE
sum(is.na(titanic$embarked))

#using replace function to replace NA by 'S' in titanic$embarked
titanic$embarked <- replace(titanic$embarked, which(is.na(titanic$embarked)), 'S')

#I would just run Sum function again to check if we replace all NAs seccessfully.
sum(is.na(titanic$embarked))

# 2: Age. from above plot we know that 20% of values are missing in Age.
Mage <- mean(titanic$age, na.rm = TRUE) 

titanic$age <- replace(titanic$age, which(is.na(titanic$age)), Mage)
sum(is.na(titanic$age))

#3: Lifeboat
is.na(titanic$boat[titanic$boat =='']) <- TRUE
sum(is.na(titanic$boat))

#4: Cabin
CabinBi <- ifelse(titanic$cabin == '', 0, 1)
titanic <- titanic %>% mutate(has_cabin_number = CabinBi)
head(titanic, 4) #check first 4 row of new data titanic

#delete last row of my data
n<-dim(titanic)[1]
titanic <-titanic[1:(n-1),]
# titanic is avaliable in your workspace
# Check out the structure of titanic
str(titanic)


ggplot(titanic, aes(x = factor(pclass), fill = factor(sex))) + 
  geom_bar(position = "dodge")


ggplot(titanic, aes(x = factor(pclass), fill = factor(sex))) + 
  geom_bar(position = "dodge") + 
  facet_grid(. ~ survived)


posn.j <- position_jitter(0.5, 0)


ggplot(titanic, aes(x = factor(pclass), y = age, col = factor(sex))) + 
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) + 
  facet_grid(. ~ survived)
