# Gildardo Gracia Rocha 
# 28/08/2023
# Matricula: 2070834

# Dos tratamientos Ctrl y Fertl, un grupo de plantas 
# prueba de t independientes 


# importar  ---------------------------------------------------------------

setwd("C:/Repositorio/Met_ES/codigos")
vivero <- read.csv("IE.csv", header = T)


# Descriptivas ------------------------------------------------------------

# usar la libreria dplyr para seleccionar datos mediante rescripciones 

library(dplyr)

Ctrl <- vivero %>% 
  filter(Tratamiento == "Ctrl")

Fert <- vivero %>% 
  filter(Tratamiento == "Fert")

mean(Ctrl$IE)
mean(Fert$IE)


Descriptor <- vivero %>% 
  group_by(Tratamiento) %>% 
  summarise(
    n = n(),
    media = mean (IE),
    mediana = median(IE),
    sd = sd(IE),
    var = var(IE)
  )

# Grafica -----------------------------------------------------------------

boxplot(vivero$IE ~ vivero$Tratamiento,
        xlab = "Tratamiento",
        ylab = "indice de Esbeltes",
        main = "Vivero Gil")


t.test (vivero$IE ~ vivero$Tratamiento)

     
