# Gildardo Gracia Rocha 
# 21/08/2023
# Matricula: 2070834


# importar datos ----------------------------------------------------------
#Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio/Met_ES/codigos")

mediciones <- read.csv("mediciones.csv", header = TRUE)
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

boxplot(mediciones$alturas, col = "lightblue", ylab = "altura", main = "sitio 1", ylim = c(0,14))



# hipotesis ---------------------------------------------------------------

# xobs = 10.17 vs xteo =11
# plantas de cedro deben alcanzar una altura de 11cm en un año 
# de acuerdo a los dichos de viveristas 
# el valor alfa de refencia es 0.05


# procedimientos  ---------------------------------------------------------
# Primer paso aplicar la funcion de t.test (nunca se pone la media pero si los datos de origen)

#ejemplo (el "mu"es la muestra teorica) (df es grados de liverdad o es igual a el numero de datos con lo que estoy comparando)

t.test(mediciones$alturas, mu = 11)

t.test(mediciones$alturas, mu =10.5)

t.test(mediciones$alturas, mu=10.6)        

t.test(mediciones$alturas, mu=10.55)


# replicabilidad ----------------------------------------------------------
#guardar la prueba de t en un objeto llamado "prueba"

prueba <- t.test(mediciones$alturas, mu =11)

#conocer los grados de livertad 

prueba$parameter

#conocer el p-value
#se acepta la hipotesis alternativa h1
prueba$p.value

#conocer intervalos de confianza 

prueba$conf.int

#conocer la media o el estimado 

prueba$estimate
