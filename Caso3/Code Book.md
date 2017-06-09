---
title: "CodeBook"
author: Evelyn Muñoz Perez, Alejandro Casimiro Figueroa, Regina Zapata Paez, Marco
  Antonio Paulino Peralta
date: "9 de junio de 2017"
output: html_document
---

#Caso 3

##Code Book

###Introducción En este documento se van describir las variables, base de datos y transformaciones que hicimos.

###Variables Las variables que se escogieron de la base de datos provienen del acelerómetro de los celulares en 3 ejes, las señales se usan para generar variables para los vectores que nombramos X,Y,Z

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Y lo obtenido de estas variables fue lo siguiente:

mean(): Media
std(): Desviación estandar
mad(): Desviación media absoluta
max(): Valor máximo de los datos
min(): Valor mínimo de los datos
sma(): Signal magnitude area
energy(): Medición de energía
iqr(): Rango intercuartil
entropy(): Señal de entropia
arCoeff(): Coeficiente de autorregresion con orden igual a 4
correlation(): Coeficiente de correlación entrre dos señales
maxInds(): Índice de coeficiente de frecuencia con la magnitud máxima
meanFreq(): Coeficientes de frecuencia para obtener la frecuencia media
skewness(): Oblicuidad de la señal de la frecuencia
kurtosis(): Curtosis de la señal de la frecuencia
bandsEnergy(): Energia de un intervalo de frecuencia bajo la función FFT
angle(): Angulo entre dos vectores

El documento que contiene las varibales completas están en: "features.txt"

###Base de Datos. La obtención se realizó con un grupo de 30 personas entre los 19 y 48 años. Cada persona hizo 6 actividades usando un Samsung Galaxy. Usando el acelerómetro del celular se pudieron obtener datos de distintas variables y luego se dividen en dos.


###Transformaciones

Unir los datos de test con los de training, para crear un solo conjunto de datos
Extrae únicamente las medidas de media y desviación estándar de cada medición 3.Usa nombres de actividad para describir los nombres de las actividades en la base de datos
Coloca etiquetas apropiadas en la base de datos con nombres de variables que las describan.
Con los datos del paso 4, crea una segunda base de datos independiente con el promedio de cada variable para cada actividad y cada sujeto.
