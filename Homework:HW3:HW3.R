############################################
## Solutions for HW 3 - Introduction to R ##
############################################
## Author: Giovanna Pozuelos
## Date: April 19, 2018


### Homework 3A
# -> insert here your code that solves homework question 

iris[order(iris$Sepal.Length, iris$Sepal.Width),]

MyMat1 <- iris[order(iris$Sepal.Length, iris$Sepal.Width),]

MyMat1[,order(colnames(MyMat1))]

MyMat1 [1:12,1:5]

write.table(MyMat1, file="myfile0419.xls", sep="\t", quote=FALSE, col.names=NA) 

myfile04192018 <- read.delim("~/Desktop/myfile04192018.txt")

### Homework 3B
# -> insert here your code that solves homework question 

plot(iris[, 1], iris[, 2], col=c("red", "blue", "green")[iris$Species])]

plot(iris[, 1], iris[, 2], ylim=c(3,4), xlim=c(5,7))

plot(iris[, 1], iris[, 2], ylim=c(3,4), xlim=c(5,7), col=c("red", "blue", "green")[iris$Species])

### Homework 3C
# -> insert here your code that solves homework question 

aggregate(iris[,1:4], by=list(iris$Species), FUN=mean, na.rm=TRUE)

barplot (myMatrix2 [,4], names.arg = myMatrix2 [,1])

barplot(as.matrix(myMatrix2))

barplot (as.matrix(myMatrix2), horiz=TRUE)

### Homework 3D and 3E
# -> insert here your code that solves homework question 


my_mw_target2b <- merge(my_mw, my_target[1:40,], by.x="ID", by.y="ID", all.x=FALSE)

my_mw_target2a [is.na(my_mw_target2a)] <- 0

### Homework 3F
# -> insert here your code that solves homework question 

filter (my_mw_target,  Molecular.Weight.Da. >4000 , Molecular.Weight.Da. < 5000)

#Alternative 
query <- my_mw_target[ (my_mw_target[, 2] > 4000),]
query2 <- my_mw_target[ (my_mw_target[, 2] < 5000),]
query3 <- merge(query2 , query,)

sort (my_mw_target[, 2]) #List matched 

### Homework 3G
## First option via %in%
# -> insert here your code that solves homework question 

L <-  c("AT5G52930.1", "AT4G18950.1", "AT1G15385.1", "AT4G36500.1", "AT1G67530.1")
subset(my_mw_target3, ID%in%L)

#Another way 

my_mw_target3[my_mw_target3$ID %in% L, ]

## Alternative via rowname index is more convenient and reusable 
# -> insert here your code that solves homework question 

rownames(my_mw_target3) <- my_mw_target3$ID

my_mw_target3[L,]

### Homework 3H
## Note since the R script of this section is provided in the assignment, there is no need to submit it with your homework. 
## This means the solution to this homework is just a single line of code.
# -> insert here your code that solves homework question 

source("exerciseRbasics.R")




