getwd()
list.files()
setwd("GitHub")
getwd()

?download.file

urla <- "https:/"

#Tarea usar estas funciones para mejorar funcion media contaminante

install.packages("https://cran.rstudio.com/bin/windows/contrib/3.4/XML_3.98-1.7.zip")
library(XML)
library(rJava)
url <- "http://www.w3schools.com/xml/simple.xml"
data <- xmlTreeParse(url,useInternalNodes = TRUE)

url <- "https://data.baltimorecity.gov/api/views/db54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(urlArchivo, desfile = "./data/camaras.csv")

datosCamara <- read.csv("./data/camaras.csv")
head(datosCamara)

if(!file.exists("data")){dir.create("data")}
url<- "https://data.baltimorecity.gov/api/views/dz54-2aru"
download.file(url,destfile = "./data/camaras.xlsx")
fechaDescarga <- date()


install.packages("rJava")
install.packages("xlsx")
library("rJava")
library("xlsxjars")
library("xlsx")

DatosCamara <- read.xlsx2("./data/camaras.xlsx",sheetIndex = 1, header = TRUE)
head(DatosCamara)



colIndex <- 2:3
rowIndex <- 1:4
subConjunto <- read.xlsx("./Data/camaras.xlsx", sheetIndex = 1, colIndex = colIndex, rowIndex = rowIndex)
subConjunto

install.packages("XML")
library(XML)
url <- "http://www.w3schools.com/xml/simple.xml"
data <- xmlTreeParse(url,useInternalNodes = TRUE)
nodoRaiz <- xmlRoot(data)
xmlName(nodoRaiz)
names(nodoRaiz)

nodoRaiz[[1]]
nodoRaiz[[1]] [[1]]

xmlSApply(nodoRaiz,xmlValue)

xpathSApply(nodoRaiz,"//name",xmlValue)

url <- "http://espn.go.com/nfl/team/stats/_/name/pit/pitsburgh-steelers"
doc <- htmlTreeParse(url, useInternalNodes = TRUE)
marcador <- xpathSApply(doc,"//li[@class='score'",xmlValue)
equipos <- xpathSApply(doc,"//li[@class='team-name'",xmlValue)

#Tarea #Nombre del equipo #Conferencia #zona
#http://www.stat.berkeley.edu/~statcur/Workshop2/Presentations/XML.pdf

install.packages("jsonlite")
library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/USUARIOGITHUB/repos")
names(jsonData)

jsonData$name
myjson <- toJSON(iris, pretty = T)
cat(myjson)

iris2 <- fromJSON(myjson)
head(iris2)

mtcars
s <- toJSON(mtcars, pretty = T)
cat(s)

s2 <- fromJSON(s)
head(s2)

install.packages("data.table")
library(data.table)
DF = data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,3)

DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

DT[2,]
DT[DT$y == "a",]
DT[c(2,3)]
DT[,c(2,3)]

{
    x = 1
    y = 2
}

k = {print(10);5}
print(10)
k <- 5
print(k)

DT[,list(mean(x),sum(z))]
DT[,table(y)]
DT1[,w:=z^2]
DT
DF
DF <- cbind(DF,DF$z^2)
names(DF)[4] <- "w"

DT2 <- DT
head(DT)

library(data.table)
set.seed(1)
DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
DT2 <- DT
DT <- DT[, y:=2]
DT <- DT[,w:=z^2]
print(DT)
print(DT2)

DT[,m:={tmp <- (x+z); log2(tmp+5)}]
DT[,a:=x>0]
DT <- DT[,b:=mean(x+w), by=a]


set.seed(123)
DT <- data.table(x=sample(letters[1:3],1E5,TRUE))
DT[,.N,by=x]

DT <- data.table(x=rep(letters[1:3],each=100),y=rnorm(300))
setkey(DT,x)

DT1 <- data.table( x = c('a','a','b','dt1'),y=1:4)
DT2 <- data.table(x=c('a','b','dt2'),z=5:7)
setkey(DT1,x);setkey(DT2,x)
merge(DT1,DT2)

set.seed(1)
df_gde <- data.frame(x=rnorm(1E6),y=rnorm(1E6))
file <- tempfile()
write.table(df_gde, file=file, row.names = F, col.names = T, sep = "\t",quote=F)
system.time(fread(file))
system.time(read.table(file,header = T,sep="\t"))
#instalar mySQL
#entrar a la pagina en la pestaña de descarga, seleccionar tu sis op e inst.
#http://genome.ucsc.edu/
#http://dev.mysql.com/doc/refman/5.7/en/installing.html


install.packages("RMySQL")
install.packages("RMySQL", type="source")
library("RMySQL")
ucscDb <- dbConnect(MySQL(),user="genome",
                    host="genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);
result
hg19 <- dbConnect(MySQL(),user="genome",db="hg19",
                  host="genome-mysql.cse.ucsc.edu")
tablas <- dbListTables(hg19)
length(tablas)
tablas[1:3]
dbListFields(hg19,"affyU133Plus2")
dbGetQuery(hg19,"select count(*) from affyU133Plus2")
affyData <- dbReadTable(hg19,"affyU133Plus2")
head(affyData)
query <- dbSendQuery(hg19,"select * from affyU133Plus2
between 1 and 3")
affyMis <- fetch(query); quantile(affyMis$misMatches)
affyMisSmall <- fetch(query, n=10); dbClearResult(query);
dim(affyMisSmall)
dbDisconnect(hg19)

source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library(rhdf5)
created = h5createFile("example.h5")
created
created = h5CreateGroup("example.h5","foo")
created = h5CreateGroup("example.h5","baa")
created = h5CreateGroup("example.h5","foo/foobaa")
h5ls("example.h5")

A = matrix(1:10,nr=5,nc=2)
h5write(A,"example.h5","foo/A")
B = array(seq(0.1,2.0,by=0.1),dim=c(5,2,2))
attr(B,"scale") <- "liter"
h5write(B, "example.h5","foo/foobaa/B")
h5ls("example.h5")
df = data.frame(1L:5L,seq(0,1,length.out = 5),
                c("ab","cde","fghi","a","s"), stringsAsFactors = F)
h5write(df,"example.h5","df")
h5ls("example.h5")
readA = h5read("example.h5","foo/A")
readB = h5read("example.h5","foo/foobaa/B")
readdf = h5read("example.h5","df")
readA
h5write(c(12,13,14),"example.h5","foo/A",index=list(1:3,1))
h5read("example.h5","foo/A")













