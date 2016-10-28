##Homework 4 Anthony Dalton
##While looping through the data or bootstrapping it, you can see that the higher number of samples causes the distribution to become more and more normal with a standard curve

#Load the boostrap package
library(boot)

#Create Vector of normal distribution
sample.a <- rnorm(n, 100, 5)
#Print header statistics
head(sample.a)

#display Histogram of non-edited sample data
hist(sample.a, xlab='sample.a. random normal sample')

#Create sample vector with "samplesize"[200] data elements
samplesize = 200
sample.a.mean <- numeric(samplesize)

# Bootstrap/iterate exponential distribution to create new vector of Sample.a.mean
for (i in 1:samplesize){
  bootsample <- sample(sample.a, size = length(sample.a), replace = TRUE)
  sample.a.mean[i] <- mean(bootsample)
}
#Print the resampled histogram after bootstrapping
hist(sample.a.mean,xlab = "Bootstrapping the random sample 200 times")

#Create second sample vector with "samplesize2"[2000] data elements
samplesize2 = 2000
sample.a.mean2 <- numeric(samplesize2)

# Bootstrap/iterate exponential distribution to create new vector of Sample.a.mean2
for (i in 1:samplesize2){
  bootsample2 <- sample(sample.a, size = length(sample.a), replace = TRUE)
  sample.a.mean2[i] <- mean(bootsample2)
}
#printing the resampled histogram after bootstrapping
hist(sample.a.mean2,xlab = "Bootstrapping the random sample 200 times")

#Create vector of exponential sampling
expSample.a <- rexp(n)
expSample.a
#display Histogram of non-edited exponential sampling
hist(expSample.a, xlab='Unedited Histogram of Exponential Sample.a')

#Create sample vector with "expsamplesize"[200] data elements
expsamplesize = 200
expSample.a.mean <- numeric(expsamplesize)

# Bootstrap/iterate exponential distribution to create new vector of expSample.a.mean 
for (i in 1:expsamplesize){
  bootsample <- sample(expSample.a, size = length(expSample.a), replace = TRUE)
  expSample.a.mean[i] <- mean(bootsample)
}
#printing the resampled histogram after bootstrapping
hist(expSample.a.mean,xlab = "Bootstrapping the random sample 200 times")

#Create sample vector with "expsamplesize"[2000] data elements
expsamplesize2 = 2000
expSample.a.mean2 <- numeric(expsamplesize2)

# Bootstrap/iterate exponential distribution to create new vector of expSample.a.mean 
for (i in 1:expsamplesize2){
  bootsample2 <- sample(expSample.a, size = length(expSample.a), replace = TRUE)
  expSample.a.mean2[i] <- mean(bootsample2)
}
#printing the resampled histogram after bootstrapping
hist(expSample.a.mean2,xlab = "Bootstrapping the random sample 2000 times")
