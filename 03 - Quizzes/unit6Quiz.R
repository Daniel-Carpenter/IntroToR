f=function(x,y) x^2
f(3)

make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

make.power()

quad = make.power(4)
quad(2)


y <- 10
f <- function(x) { y <- 2 * y^2 + g(x) } 
g <- function(x) { x * y }