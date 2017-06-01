x <- data.frame(a=1,b="a")
dput(x)
dput(x,"x.R")
dget("x.R")
rm(y)
str(file)
con <- url("http://www.fcfm.buap.mx/")
x <- readLines(con, 7)
e <- c("a","b","c","d","e","a")
e
e[4]
e[1]
e[1:3]
e[3:5]
e[5:2]
e[1,3,5] #NO
e[c(1,3,5)]
e[e>"b"]
#getwd() ruta
u <- e == "c"
u
e[u]
u <- e == "c" | e == "a"
u
e[u]
# | es o 

x <- list(foo=1:4, bar=0.6)
x[1]
x[[1]]
x$foo
x$bar

x["bar"]
x[["bar"]]
