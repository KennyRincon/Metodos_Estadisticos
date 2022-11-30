#Kenny Margarita Rincon Lopez
#EXAMEN 30/11/2022

Nemadatos <- read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Nemadatos2.csv")

library(readr)

View(Nemadatos)

# EJERCICIO 1

Nemadatos$Suelo <- as.factor(Nemadatos$Suelo)

boxplot(Nemadatos$Nemadatos ~ Nemadatos$Suelo,
        xlab = "Tipo de Suelo",
        ylab = "Numero de Nemadatos",
         col = "pink")

#¿Observamos diferencias en los valores promedios y de variabilidad por grupos?
# =
  
#Aplique la "FUNCION TAPPLY" y encuentre las varianzas de los cinco tratamientos
#¿Cuántas veces es la diferencia entre la varainza más pequeña y la más grande?
# =

tapply(Nemadatos$Nemadatos, Nemadatos$Suelo, mean)
tapply(Nemadatos$Nemadatos, Nemadatos$Suelo, var) 

#Realiza un test F (ANOVA) para comparar las medias de las 5 muestras ¿Cuáles serían las hipótesis Nula y Alternativa?

par.aov <- aov(Nemadatos$Nemadatos ~ Nemadatos$Suelo)
summary(par.aov)

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))



#EJERCICIO 2

Crecimiento <- read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Crecimiento.csv")
library(readr)
View(Crecimiento)

Crecimiento$Riego <- as.factor(Crecimiento$Riego)


#Kenny Margarita Rincon Lopez
#EXAMEN 30/11/2022

Nemadatos <- read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Nemadatos2.csv")

library(readr)

View(Nemadatos)

# EJERCICIO 1

Nemadatos$Suelo <- as.factor(Nemadatos$Suelo)

boxplot(Nemadatos$Nemadatos ~ Nemadatos$Suelo,
        xlab = "Tipo de Suelo",
        ylab = "Numero de Nemadatos",
        col = "pink")

#¿Observamos diferencias en los valores promedios y de variabilidad por grupos?
# =

#Aplique la "FUNCION TAPPLY" y encuentre las varianzas de los cinco tratamientos
#¿Cuántas veces es la diferencia entre la varainza más pequeña y la más grande?
# =

tapply(Nemadatos$Nemadatos, Nemadatos$Suelo, mean)
tapply(Nemadatos$Nemadatos, Nemadatos$Suelo, var) 

#Realiza un test F (ANOVA) para comparar las medias de las 5 muestras ¿Cuáles serían las hipótesis Nula y Alternativa?

par.aov <- aov(Nemadatos$Nemadatos ~ Nemadatos$Suelo)
summary(par.aov)

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))



#EJERCICIO 2

Crecimiento <- read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Crecimiento.csv")
library(readr)
View(Crecimiento)
Crecimiento$Riego <- as.factor(Crecimiento$Riego)

boxplot(Crecimiento$Riego ~ Crecimiento$Crecimiento)

tapply(Crecimiento$Riego, Crecimiento$Crecimiento, mean)
tapply(Crecimiento$Riego, Crecimiento$Crecimiento, var)
tapply(Crecimiento$Riego, Crecimiento$Crecimiento, sd)
tapply(Crecimiento$Riego, Crecimiento$Crecimiento, median)
tapply(Crecimiento$Riego, Crecimiento$Crecimiento, length)

bartlett.test(Crecimiento$Riego, Crecimiento$Crecimiento)


par.aov <- aov(Crecimiento$Riego ~ Crecimiento$Crecimiento)
summary(par.aov)

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))

