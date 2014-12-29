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

ggplot(diamonds, aes(y = carat, x = 1)) + geom_boxplot()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_boxplot()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_point() + geom_violin()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin() + geom_point()  

ggplot(economics, aes(x=date, y = pop)) + geom_line()

require(lubridate)
economics$year <- year(economics$date)
economics$month <- month(economics$date)
econ2000 <- economics[which(economics$year >= 2000), ]

require(scales)
g <- ggplot(econ2000, aes(x=month, y=pop))

g <- g + geom_line (aes(color=factor(year) , group=year))
g <- g + scale_color_discrete (name="Year")
g <- g + scale_y_continuous(labels=comma)
g <- g + labs(title= "Population Growth", x="Month", y="Population")
g

require(ggthemes)
# build a plot and store it in g2
g2 <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=color))

# apply a few themes
g2 + theme_economist() + scale_colour_economist() 
g2 + theme_excel() + scale_colour_excel()
g2 + theme_tufte()
g2 + theme_wsj()
