getwd()
completos <- function(directorio,id=1:332){
    setwd("C:/Users/User/Documents/GitHub/Programacion_Actuarial_III/Specdata/specdata")
    e<- vector("numeric")
    for (i in id){
        i = abs(i)
        if (i<10){
            i = read.csv(paste("00",i, ".csv",sep=""),header = T)
        }else if (i<100){
            i = read.csv(paste("0",i, ".csv",sep=""), header = T)
        }else{
            i = read.csv(paste(i,".csv",sep=""), header = T)
        }
        
        c <- complete.cases(i)
        abre2 <- i[c,2:3]
        d <- nrow(abre2)
        e <- c(e,d)
        
    }
    datf <- data.frame(Id = id, nobs = e)
datf
}

completos(,1:10)
