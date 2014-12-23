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
