x <- (-300:300)/100
y <- x^2 + 5
plot(x,y, type="l")

miplot <- function(x,y,harry="l",...){
  plot(x,y,type = harry,...)
}
miplot(x,y, main = "Parábola", sub = "y=x^2+5", xlab="Horizontal", 
       ylab="Vertical", col = "blue")

?paste

f <- function(x,y){
  x^2 + y/z
}

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia(2)

cubica(3)
cuadrada(3)



x <- list(a=1:5, b=rnorm(10) , c=rnorm(10,3) , d=rnorm(10,5))
lapply(x, mean)
sapply(x, mean)

x <- matrix(rnorm(200), 20, 10)
apply(x,2,mean)
apply(x,1,sum)
#2,1 trabaja con columnas - filas


x <- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))

a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2), mean)
rowMeans(a,dims=2)























