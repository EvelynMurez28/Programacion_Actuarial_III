rankingcompleto <- function(resultado,num = "mejor"){
    setwd("C:/Users/User/Documents/GitHub/Programacion_Actuarial_III/Caso 2")
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
    estado1 <-  as.character(outcome$State)
    x <- c()
    if(!(resultado %in% c("ataque","falla","neumonia"))){
        stop("Resultado inválido")
    }
    if(resultado == "ataque"){
       resultado <- 11
    } else if (resultado == "falla"){
        resultado <- 17
    } else if (resultado == "neumonia"){
        resultado <- 23
    }
    if(num=="mejor"){
        num<-1
    }
    
    a <- split(outcome,outcome[,7])
    if( is.numeric(num)==T){
        for (i in 1:54) {
            b <- a[[i]]
            b[,resultado]<-suppressWarnings(as.numeric(b[,resultado]))
            c <- order(b[,resultado],b[,2])
            hos <- b[c,2]
            resul <- hos[num]
            x <- c(x,resul)
        }
    } else if(num=="peor") {
        num <- 1
        for (i in 1:54) {
            b <- a[[i]]
            b[,resultado]<-suppressWarnings(as.numeric(b[,resultado]))
            c <- order(b[,resultado],b[,2],decreasing = T)
            hos <- b[c,2]
            resul <- hos[num]
            x <- c(x,resul)
        }
    }
    dat <- data.frame(x,names(a))
    names(dat)<-c("hospital","estado")
    rownames(dat) <- names(a)
    dat
    
}
head(rankingcompleto("ataque", 20), 10)
