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

