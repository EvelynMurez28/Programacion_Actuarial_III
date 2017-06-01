    #
    12345
#hola
    #hola
#Dates and times
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-05"))

x <- as.Date("1994-02-01")
unclass(x)
y <- as.Date("1996-02-14")    
unclass(y)
unclass(y-x)

date()
ct <- as.POSIXct.date(Sys.time())
lt <- as.POSIXlt.date(Sys.time())

weekdays(x)
weekdays(y)

?lapply


x <- list(a=1:5,b=rnorm(10), c=rnorm(10,1),d=rnorm(10,2))
lapply(x, mean)

x <- 1:4
lapply(x, runif)

x <- 1:4
lapply(x, runif, max=15, min=5)



getwd()




