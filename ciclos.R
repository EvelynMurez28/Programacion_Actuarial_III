count <- 0
while(count<10){
  print(count)  
  count <- count + 1
}

for (i in 0:9){
  print(i)
}


i <- 0
while (TRUE && i<=10000){
  print(i)
  i <- i+1
}



z <- 5
contador <- 1
while ((z >= 3 && z <= 10) && contador < 100){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if (moneda==1){
    z <- z+1
    
  }else{
    z <- z-1
  }
  contador <- contador + 1
}

print(contador)

z <- 5
contador <- 1
x <- c()
while ((z >= 3 && z <= 10) && contador < 100){
  x <- c(x , z)
  moneda <- rbinom(1,1,0.5)
  if (moneda==1){
    z <- z+1
    
  }else{
    z <- z-1
  }
  
  contador <- contador + 1
}
x
print(contador)


set.seed(1)
y <- c()
for (i in 1:100){
z <- 5
contador <- 1
x <- c()

while ((z >= 3 && z <= 10) && contador < 100){
  x <- c(x , z)
  
  moneda <- rbinom(1,1,0.5)
  if (moneda==1){
    z <- z + 0.1
    
  } else{
    z <- z - 0.1
    }
    contador <- contador + 1
  }
  y <- c(y , length(x))
}
y
hist(y)
plot(x, type ="l")
?plot


f <- c(-50:50)
for (i in -50:50){
  y <- (f^2) + 5
}
plot(y, type = "l")


x <- (-30:30)/10
y <- x^2 + 5
plot(y, type = "l")


for (i in 1:50){
  if (i <= 25){
            next 
  }
  if (i > 40){
          break
  }
  print(i)
}


suma2 <- function(x,y){
      x+y
}

suma2(1,5)

dump("suma2", file="suma2.R")


promedioCol <- function(x, quitarNA = TRUE){
  nc <- ncol(x)
  medias <- vector("numeric", nc)
  for (i in 1:nc){
    medias <- c(medias,mean(x[,i], na.rm = quitarNA))
  
  }
  medias
}

promedioCol(airquality)
?vector
?matrix


                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      


