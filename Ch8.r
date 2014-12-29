## Ch8.r

say.hello <- function()
{
	print("Hello, World!")
}
  
say.hello()

sprintf("Hello %s", "Jared")
sprintf("Hello %s today is %s", "Jared", "Sunday")

hello.person <- function(name)
{
	print(sprintf("Hello %s", name))
}

hello.person("Jared")
hello.person("Bob")
hello.person("Sarah")

hello.person <- function(first, last)
{
	print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared","Lander")
hello.person(first="Jared",last="Lander")
hello.person("Jared",last="Lander")
hello.person(last="Lander", "Jared")
hello.person(fir="Jared",l="Lander")

hello.person <- function(first, last="Doe")
{
	print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared") 


hello.person("Jared", extra = "Goodbye")
hello.person("Jared", "Lander", "Goodbye")

hello.person <- function(first, last="Doe", ...)
{
	print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared", extra = "Goodbye")
hello.person("Jared", "Lander", "Goodbye")


double.num  <- function(x)
{
	x * 2
}
double.num(5)

double.num  <- function(x)
{
	return(x * 2)
	print("Hello!")
	return(17)
}

double.num(5)

do.call("hello.person", args = list(first = "Jared", last = "Lander"))

do.call(hello.person, args = list(first = "Jared", last = "Lander"))

run.this  <- function(x, func = mean)
{
	do.call(func, args = list(x))
}

run.this(1:10)

run.this(1:10, mean)
run.this(1:10, sum)
run.this(1:10, sd)

