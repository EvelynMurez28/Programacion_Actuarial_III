corr <- function(directorio,horizonte=0){
    setwd("C:/Users/User/Documents/GitHub/Programacion_Actuarial_III/Specdata/specdata")
    for (i in 1:332){
        i = abs(i)
        if (i<10){
            i = read.csv(paste("00",i, ".csv",sep=""))
        }else if (i<100){
            i = read.csv(paste("0",i, ".csv",sep=""))
        }else{
            i = read.csv(paste(i,".csv",sep=""))
        }
        
        c <- complete.cases(i)
        abre2 <- i[c,]
        d <- nrow(abre2)
        
        if (d>horizonte){
            crr <- cor(abre2[2],abre2[3])
            e <- c(e,crr)
            
        }
        
    }    
    e
}


