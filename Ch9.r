## Ch9.r

as.numeric(TRUE)
as.numeric(FALSE)

1 == 1
1 < 1
1 <= 1
1 > 1
1 >= 1
1 != 1

toCheck <- 1

if (toCheck == 1)
{
	print("hello")
}

if (toCheck == 0)
{
	print("hello")
}

check.bool <- function(x)
{
	if (x == 1)
	{
		print("hello")
		
	} else
	{
		print("goodbye")
		
	}
}

check.bool(1)
check.bool(0)
check.bool("k")
check.bool(TRUE)

check.bool <- function(x)
{
	if (x == 1)
	{
		print("hello")
		
	} else if (x == 0)
	{
		print("goodbye")
		
	} else
	{
		print("confused")
	}	
		
}
check.bool(1)
check.bool(0)
check.bool(2)
check.bool("k")

use.switch <- function(x)
{
	switch(x,
		   "a" = "first",
		   "b" = "second",
		   "z" = "last",
		   "c" = "third",
		   "other")
		   
}

use.switch("a")
use.switch("b")
use.switch("c")
use.switch("d")
use.switch("e")
use.switch("z")

use.switch(1)
use.switch(2)
use.switch(3)
use.switch(4)
use.switch(5)
use.switch(6)
is.null(use.switch(6))

ifelse(1 == 1, "Yes", "No")
ifelse(1 == 0, "Yes", "No")

toTest <- c(1, 1, 0, 1, 0, 1)
ifelse(toTest == 1, "Yes", "No")
ifelse(toTest == 1, toTest * 3, toTest)
ifelse(toTest == 1, toTest * 3, "Zero")

toTest[2] <- NA
ifelse(toTest == 1, "Yes", "No")
ifelse(toTest == 1, toTest * 3, toTest)
ifelse(toTest == 1, toTest * 3, "Zero")
