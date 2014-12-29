#Ch6.r

theURL <- "http://www.jaredlander.com/data/Tomato%20First.csv"
tomato <- read.table (file = theURL, header = TRUE, sep = ",")
head(tomato)

x <- 10:1  
y <- -4:5  
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacross", "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(First=x, Second=y, Sport=Q, stringsAsFactors=FALSE)

save(tomato, file = "data/tomato.rdata")
rm(tomato)
load("data\\tomato.rdata")

n<- 20
r <- 1:20
w <- data.frame(n,r)
n
r
w

save(n, r, w, file = "data/multiple.rdata")
rm(n, r, w)
load("data/multiple.rdata")

require(ggplot2)
data(diamonds)
head(diamonds)

require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool
