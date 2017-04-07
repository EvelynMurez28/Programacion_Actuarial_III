#file:///C:\Users\User\AppData\Local\Temp\Temp1_specdata.zip\specdata\002.csv
##sulfate o nitrate
###id

y <- 0

mediacontaminante <- function(directorio, contaminante ,id=1:332){
    setwd("C:/Users/User/Documents/GitHub/Programacion_Actuarial_III/Specdata/specdata")
        if (contaminante == "sulfate"){
        y = 1
    }  else if (contaminante == "nitrate"){
        y = 2
    }
    
    for (i in id){
        i = abs(i)
        if (i<10){
            i = read.csv(paste("00" , i , ".csv" , sep = ""),header = T)
        }
        else if (i<100){
            i = read.csv(paste("0" , i , ".csv" , sep = ""),header = T)
        }
        else{
            i = read.csv(paste(i , ".csv",sep=""),header = T)
        }
        
        c <- complete.cases(i)
        abrir2 <- i[c,2:3]
        
    }
    media <- mean(abrir2[,y])
    media
}


mediacontaminante(,"sulfate",332)




