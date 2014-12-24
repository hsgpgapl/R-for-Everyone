x <- 10:1  
y <- -4:5  
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacross", "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(x, y, q)
theDF
theDF <- data.frame(First = x, Second = y, Sport = q)
theDF
theDF[3,2]
theDF[1,2:3]
theDF[1:4,2]
theDF[c(3,5),c("First","Sport")]
class(theDF[,"Sport"])
theDF["Sport"]
theDF[["Sport"]]
class(theDF["Sport"])
class(theDF[["Sport"]])
theDF[,"Sport", drop = FALSE]
class(theDF[,"Sport", drop = FALSE])
summary(theDF) 
newFactor <- factor(c("Pennsylvania","New York","New Jersey","New York","Tennessee","Massachusetts","Pennsylvania","New York"))
model.matrix(~newFactor - 1)

list(1,2,3)
list(c(1,1,2,3))
(list3 <- list(c(1,2,3), 3:7))
list(theDF, 1:10)
list5 <- list(theDF, 1:10, list3)
list5
names(list5)
names(list5)<- c("data.frame","vector","list")
list6 <- list(TheDataFrame=theDF, TheVector=1:10, TheList=list3)
names(list6)
list(6)

(emptyList <- vector(mode = "list", length=4))
list5[[1]]
list5[["data.frame"]]
list5[[1]]$Sport
list5[[1]] [,"Second"]
length(list5)
list5[[length(list5)+1]] <- 2
list5[["NewElement"]] <- 3:6
names(list5)

