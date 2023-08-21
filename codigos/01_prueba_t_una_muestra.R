# Gildardo Gracia Rocha 
# 21/08/2023
# Matricula: 2070834


# importar datos ----------------------------------------------------------
#Funcion read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("codigos/mediciones.csv", header = TRUE)
head(mediciones) #funion head (sirve para ver los primeros 6 datos)



# descriptivas ------------------------------------------------------------
#medidas de tendencia central media, mediana, rango 

mean(mediciones$alturas)
median(mediciones$altura)
range(mediciones$alturas)
fivenum(mediciones$alturas)

# medias de dispersiondesviacion estandar, varianza 

sd(mediciones$alturas)
var(mediciones$alturas)



# graficas ----------------------------------------------------------------

boxplot(mediciones$alturas, col = "lightblue", ylab = "altura", mean = "sitio 1")

        