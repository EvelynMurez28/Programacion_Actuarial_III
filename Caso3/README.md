---
title: "README"
author: Evelyn Muñoz Perez, Alejandro Casimiro Figueroa, Regina Zapata Paez, Marco
  Antonio Paulino Peralta
date: "9 de junio de 2017"
output: html_document
---
###Introducción Los datos analizados en este caso son obtenidos de los acelerómetros de celulares Samsung Galaxy, los cuáles vienen en diferentes archivos de texto, debemos acomodarlos de tal forma que sean entendibles para cualquiera.

###Primera parte:  Tenemos que unir los datos de train y test de x y de y, también unimos los sujetos de prueba y cargamos "feature.txt" para usarlos posteriormente.

a <- read.table("./Caso3/train/X_train.txt")
b <- read.table("./Caso3/test/X_test.txt")
d <- read.table("./Caso3/train/y_train.txt")
e <- read.table("./Caso3/test/y_test.txt")
f <- read.table("./Caso3/train/subject_train.txt")
g <- read.table("./Caso3/test/subject_test.txt")


unir1 <- rbind(a,b)
unir2 <- rbind(d,e)[,1]
unirSub <- rbind(f,g)

tit <- read.table("./Caso3/features.txt")

####Segunda parte: Se deben que usar solo los datos de media y desviación estandar. Se deben poner nombres a las columnas de los datos o sería dificil hacerlo después.

        colnames(unir1) <- tit[,2]
Promtd <- grepl('-(mean|std)\\(', tit[,2])
unir1 <- unir1[Promtd]

###Tercera parte  Se nombran las distintas actividades (Walking upstairs, walking, ...) en "unir2".

aa <- as.character(read.table("./Caso3/activity_labels.txt")[,2])
unir2 <- aa[unir2]

###Cuarta parte: Como las filas ya están nombradas ahora, se juntan los datos para así formar una tabla de datos finales.

delta <- colnames(unir1)
delta <- gsub("\\()", "", delta)
delta <- gsub('([[:upper:]])', ' \\1', delta)
delta <- gsub("Body Body", "Body", delta)
delta <- gsub("\\-", " -", delta)
delta <- gsub("-mean", "- Media", delta)
delta <- gsub("-std", "- DesvEst", delta)
delta <- gsub("t", "T", delta)
delta <- gsub("f", "F", delta)
colnames(unir1) <- delta

Persona <- unirSub
colnames(Persona) <- "Sujeto"
acc <- unir2
fin <- cbind(Persona, acc, unir1)

####Quinta parte: Ahora, debemos obtener el promedio de cada una de las variables, para cada actividad y persona.

library(dplyr) #se debe instalar previamente
promfinal <- fin %>% group_by(Persona,acc) %>% summarise_each(funs(mean))
write.csv(promfinal,"Promedio de acciones.csv")
