#Ch7.r

require(ggplot2)
data(diamonds)
head(diamonds)

hist(diamonds$carat, main = "Carat Histogram", xlab = "Carat")

plot(price ~ carat, data = diamonds)
plot(diamonds$carat, diamonds$price)
boxplot(diamonds$carat)

ggplot(data = diamonds) + geom_histogram(aes(x=carat), binwidth=.1)
ggplot(data = diamonds) + geom_density(aes(x=carat), fill = "grey50")
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()
g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color=color))
g + geom_point(aes(color=color)) + facet_wrap(~color)
g + geom_point(aes(color=color)) + facet_grid(cut ~ clarity)
ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)