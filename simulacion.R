str(str)
str(lm)
x <- rnorm(100)
str(x)
summary(x)
f <- gl(40,10)
str(f)
summary(f)
str(airquality)
m <- matrix(rnorm(100),10,10)
str(m)
s <- split(airquality, airquality$Month)
str(s)
x <- rnorm(10)
x
y <- rnorm(10,50,5)
y
summary(x)           
summary(y)

rpois(10,1)
rpois(10,2)
rpois(10,20)

##Distribución acumulativa
ppois(2,2) ## Pr[x<=2]
ppois(4,2) ## Pr[x<=4]
ppois(6,2) ## Pr[x<=6]


set.seed(2)
b0 <- 0.5
b1 <- 2
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- b0 + b1*x + e
plot(x,y,main="Modelo Lineal", col="blue")

set.seed(10)
x <- rbinom(100,1,0.5)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x,y,main="Modelo Lineal", col="dark red")

#Poisson
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y, main="Modelo Lineal", col = "forestgreen")

set.seed(1)
sample(1:10,4)
sample(1:10,4)
sample(letters,5)
sample(1:10) #permutación
sample(1:10)
sample(1:10, replace= TRUE) #extracción con reemplazo

#Elapsed time > user time
system.time(readLines("http://www.fcfm.buap.mx"))

## Elapsed time < user time
hilbert <- function(n){
    i <- 1:n
    1/outer(i-1,i,"+")
}
x <- hilbert(1000)
system.time(svd(x))




