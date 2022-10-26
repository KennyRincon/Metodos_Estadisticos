#Kenny Rincon
#Examen 1
#12/10/2022

Nematodos <- read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Nematodos.csv")
library(readr)
View(Nematodos)

Nematodos$Tipos.de.suelo <- as.factor(Nematodos$Tipos.de.suelo)

boxplot(Nematodos$Nematodos ~ Nematodos$Tipos.de.suelo)

#FUNCION TAPPLY
tapply(Nematodos$Nematodos, Nematodos$Tipos.de.suelo, mean)
tapply(Nematodos$Nematodos, Nematodos$Tipos.de.suelo, var)                      
#Es seis veces mayor al resultado con mayor varianza

#¿Observamos diferencias en los valores promedios y de variabilidad por grupos?
boxplot(Nematodos$Nematodos ~ Nematodos$Tipos.de.suelo)
#SI, SE ENCONTARRON DIFERENCIAS

#PREGUNTAS:
#¿Cuantas veces es la diferencia entre la varianza pequeña y la grande?
#Varianza Mayor fue de 571.7
#Varianza Menor fue de 90.8


bartlett.test(Nematodos$Nematodos, Nematodos$Tipos.de.suelo)

shapiro.test(Nematodos$Nematodos)
hist(Nematodos$Nematodos)
          
library(dplyr)

S1 <- Nematodos %>%
  filter(Tipos.de.suelo == "S1")
S2 <- Nematodos %>%
  filter(Tipos.de.suelo == "S2")
S3 <- Nematodos %>%
  filter(Tipos.de.suelo == "S3")
S4 <- Nematodos %>%
  filter(Tipos.de.suelo == "S4")
S5 <- Nematodos %>%
  filter(Tipos.de.suelo == "S5")

shapiro.test(S1$Nematodos)
shapiro.test(S2$Nematodos)
shapiro.test(S3$Nematodos)
shapiro.test(S4$Nematodos)
shapiro.test(S5$Nematodos)

par.aov <- aov(Nematodos$Nematodos ~ Nematodos$Tipos.de.suelo)
summary(par.aov)
                                                   
#TEST ANOVA
#Grados de libertad: 4
#Grados de libertad residuales: 20
#Valor de P: 0.544
#Hipotesis nula: La varianzas son homogeneas
#Hipotesis Alternativa: Las varianzas no son homogeneas