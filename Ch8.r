## Ch8.r

say.hello <- function(){
	print("Hello, World!")
}
  
say.hello()

sprintf("Hello %s", "Jared")
sprintf("Hello %s today is %s", "Jared", "Sunday")

hello.person <- function(name){
	print(sprintf("Hello %s", name))
}

hello.person("Jared")
hello.person("Bob")
hello.person("Sarah")

hello.person <- function(first, last){
	print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared","Lander")
hello.person(first="Jared",last="Lander")
hello.person("Jared",last="Lander")
hello.person(last="Lander", "Jared")
hello.person(fir="Jared",l="Lander")

hello.person <- function(first, last="Doe"){
	print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared")

