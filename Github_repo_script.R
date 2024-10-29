5+6
df <- c("code", "category")
a <- 1
b <- 5
a+b
sum(a,b)
name <- c("megha" , "neha", "eureka")
age <- c(30, 32, 31)
sum(age)
friends <- data.frame(name, age)
View(friends)
str(friends)
friends$name

#creating a dataframe
grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)
class(grades$names)

library(tidyverse)
friends[1,1:2]
friends[friends$age<32, 1:2]
friends %>% select(1,2) %>% filter(age < 32) %>% arrange (name)
data()
View(starwars)
starwars %>% filter(height>150 & mass <200) %>% mutate(height_in_meters = height/100) %>% select (height_in_meters, mass) %>% arrange(mass) %>% View()
View(starwars)
starwars <- starwars %>% mutate(height_in_meters = height/100)
starwars <- starwars %>% select(-height_in_meters)
View(starwars)
View(msleep)
head(msleep)
msleep
glimpse(msleep)
length(msleep) #number of columns
length(msleep$name) #number of observations 
data()
View(AirPassengers)
mdeaths
head(mdeaths)
View(band_members)
band_members <- band_members %>%
  filter(band != "Stones")
band_members
unique(msleep$vore)
missing <-!complete.cases(msleep)
msleep[missing, ]

# Cleaning data sets 
# select vairables

starwars %>% select(name, height, mass) %>% View()
starwars %>% select(1:3)
starwars %>% select(ends_with("year"))

#changing the order
starwars %>% select(name, height, mass, birth_year, everything())
View(starwars)

print("amazing")


#changing the name of the variable; new name first, followed by old name
starwars %>% rename("characters" = "name") %>% head()

#changing the variable type 
class(starwars$hair_color)
starwars$hair_color <- as.factor(starwars$hair_color)
head(starwars)

starwars %>% mutate(hair_color = as.character(hair_color))

df <- starwars
df$sex <- as.factor(df$sex)
levels(df$sex)
df <- df %>% mutate(sex = factor(sex, levels = c("male", "female", "hermaphroditic", "none")))
levels(df$sex)

#filter data
starwars %>% select(mass, sex) %>% filter (mass>= 50 & sex == "male")
str(starwars$sex)

#recoding data
starwars %>% 
  select(sex) %>% 
  mutate(sex = recode(sex, "male" = "man",
                          "female" = "woman"))

#####################################

library(dslabs)
data("murders")
filter(murders, region == "South")
head(murders)
nt <- select(murders, state, region, total)
nt
murders <- murders %>% mutate(rate = total/population*100000)
nt <- murders %>% select(state, region, rate)
filter(nt, rate <= 0.71)

######################################
#deleted the last line as it doesnt work"

library (dslabs)

#This file needs to be updated


