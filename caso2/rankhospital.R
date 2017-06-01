rankhospital <- function(estado,resultado,num = "mejor"){
    setwd("C:/Users/User/Documents/GitHub/Programacion_Actuarial_III/Caso 2")
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
    
    if(!(resultado %in% c("ataque","falla","neumonia"))){
        stop("Resultado inválido")
    }
    estado1 <-  as.character(outcome$State)
    if(!(estado %in% estado1)){
        stop("Estado inválido")
    }
    if(resultado == "ataque"){
        e <- subset(outcome, estado1 == estado)
        resultado <- e[,11]
    } else if (resultado == "falla"){
        e <- subset(outcome, estado1 == estado)
        resultado <- e[,17]
    } else if (resultado == "neumonia"){
        e <- subset(outcome, estado1 == estado)
        resultado <- e[,23]
    }
    
    resultado <- suppressWarnings(as.numeric(resultado))
    
    if(num == "mejor"){
        mtasa <- e[which.min(resultado),]
        best <- mtasa[order(mtasa$Hospital.Name, na.last = NA), ]
        best1 <- best[1,2]
        best1
    }else if(num == "peor"){
        mtasa <- e[which.max(resultado),]
        best <- mtasa[order(mtasa$Hospital.Name, na.last = NA), ]
        best1 <- best[1,2]
        best1
    }else{
        mtasa <- e[(resultado),]
        ord <- e[order(resultado,e$Hospital.Name, na.last = NA),2]
        fin <- ord[num]
        fin
    }
    
}
    
rankhospital("MN","ataque",5000)


