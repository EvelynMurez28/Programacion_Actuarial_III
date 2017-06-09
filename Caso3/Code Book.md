---
title: "CodeBook"
author: Evelyn Mu�oz Perez, Alejandro Casimiro Figueroa, Regina Zapata Paez, Marco
  Antonio Paulino Peralta
date: "9 de junio de 2017"
output: html_document
---

#Caso 3

##Code Book

###Introducci�n En este documento se van describir las variables, base de datos y transformaciones que hicimos.

###Variables Las variables que se escogieron de la base de datos provienen del aceler�metro de los celulares en 3 ejes, las se�ales se usan para generar variables para los vectores que nombramos X,Y,Z

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
std(): Desviaci�n estandar
mad(): Desviaci�n media absoluta
max(): Valor m�ximo de los datos
min(): Valor m�nimo de los datos
sma(): Signal magnitude area
energy(): Medici�n de energ�a
iqr(): Rango intercuartil
entropy(): Se�al de entropia
arCoeff(): Coeficiente de autorregresion con orden igual a 4
correlation(): Coeficiente de correlaci�n entrre dos se�ales
maxInds(): �ndice de coeficiente de frecuencia con la magnitud m�xima
meanFreq(): Coeficientes de frecuencia para obtener la frecuencia media
skewness(): Oblicuidad de la se�al de la frecuencia
kurtosis(): Curtosis de la se�al de la frecuencia
bandsEnergy(): Energia de un intervalo de frecuencia bajo la funci�n FFT
angle(): Angulo entre dos vectores

El documento que contiene las varibales completas est�n en: "features.txt"

###Base de Datos. La obtenci�n se realiz� con un grupo de 30 personas entre los 19 y 48 a�os. Cada persona hizo 6 actividades usando un Samsung Galaxy. Usando el aceler�metro del celular se pudieron obtener datos de distintas variables y luego se dividen en dos.


###Transformaciones

Unir los datos de test con los de training, para crear un solo conjunto de datos
Extrae �nicamente las medidas de media y desviaci�n est�ndar de cada medici�n 3.Usa nombres de actividad para describir los nombres de las actividades en la base de datos
Coloca etiquetas apropiadas en la base de datos con nombres de variables que las describan.
Con los datos del paso 4, crea una segunda base de datos independiente con el promedio de cada variable para cada actividad y cada sujeto.
