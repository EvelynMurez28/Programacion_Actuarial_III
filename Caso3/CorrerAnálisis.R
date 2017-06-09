setwd("C:/Users/User/Documents/GitHub/Programacion_Actuarial_III")

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

colnames(unir1) <- tit[,2]
Promtd <- grepl('-(mean|std)\\(', tit[,2])
unir1 <- unir1[Promtd]

aa <- as.character(read.table("./Caso3/activity_labels.txt")[,2])
unir2 <- aa[unir2]


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



library(dplyr) 
prom_final <- fin %>% group_by(Persona,acc) %>% summarise_each(funs(mean))
write.csv(prom_final,"Promedio de acciones.csv")

write.csv(fin, "Datos Ordenados.csv")


