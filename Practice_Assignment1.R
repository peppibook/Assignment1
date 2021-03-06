# a list of those files
list.files("diet_data")

# What's inside
andy <- read.csv("diet_data/Andy.csv")
head(andy)

# the length of the 'Day' column
length(andy$Day)

# the dimensions of the data.frame
dim(andy)

str(andy)

summary(andy)

names(andy)

# Andy's starting weight
andy[1, "Weight"]

#Andy's final weight
andy[30, "Weight"]

# Alternative : final weight
andy[which(andy$Day==30), "Weight"]

# another alternative : final weight
andy[which(andy[,"Day"]==30), "Weight"]

# Use the subset() function
subset(andy$Weight, andy$Day==30)

# Andy's starting and ending weight to vectors
andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]

# how much weight he lost by subtracting the vectors
andy_loss <- andy_start - andy_end
andy_loss

# loot at other subjects or maybe even everybody at once
# redo the output of list.files()
files <- list.files("diet_data")
files

# a list of the contents of 'diet_data' in alphabetical order
files[1]
files[2]
files[3:5]

# take a quick look at John.csv
head(read.csv(files[3]))

# Append the directory
files_full <- list.files("diet_data", full.names = TRUE)
files_full

# take a quick look at John.csv after fix the directory
head(read.csv(files_full[3]))
