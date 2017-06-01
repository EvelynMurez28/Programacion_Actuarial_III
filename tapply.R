list(rep(1,4) , rep(2,3) , rep(3,2) , rep(4,1))
mapply(rep,1:4,4:1)

noise <- function(n,mean,sd){
    rnorm(n,mean,sd)
}

noise(5,1,2)

mapply(noise,1:5,1:5,2)

?tapply


x <- c(rnorm(10),runif(10),rnorm(10,1))

f <- gl(3,10)
#gl, generar niveles
f

tapply(x,f,mean)
tapply(x,f,mean,simplify = F)

split(x,f)
lapply(split(x,f),mean)

install.packages("datasets")
library(datasets)

tapply(airquality$Temp,airquality$Month, mean,simplify=T)

sapply(split(airquality$Temp,airquality$Month), mean)
split(airquality$Temp,airquality$Month)
split(airquality$Temp,airquality$Day)

s <- split(airquality,airquality$Month)
lapply(s, function(x) colMeans(x[,1:3], na.rm = TRUE))
sapply(s, function(x) colMeans(x[,1:4], na.rm = TRUE))

x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)
x
str(split(x,list(f1,f2)))

#MANEJO DE ERRORES
?options
options(error = recover)
read.csv("noexiste")



















