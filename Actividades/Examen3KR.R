
# EJERCICIO 1
Nemadatos <- 
  read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Nemadatos2.csv")
Nemadatos$Suelo <- as.factor(Nemadatos$Suelo)
boxplot(Nemadatos$Nemadatos ~ Nemadatos$Suelo,
        xlab = "Tipo de Suelo",
        ylab = "Numero de Nemadatos",
        col = "pink")


library(repmis)
tapply(Nemadatos$Nemadatos, Nemadatos$Suelo, mean)
tapply(Nemadatos$Nemadatos, Nemadatos$Suelo, var) 

#Realiza un test F (ANOVA) para comparar las medias de las 5 muestras ¿Cuáles serían las hipótesis Nula y Alternativa?

par.aov <- aov(Nemadatos$Nemadatos ~ Nemadatos$Suelo)
summary(par.aov)

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))



#EJERCICIO 2

Crecimiento <- 
  read.csv("~/RepositorioKen/Metodos_Estadisticos/Datos/Crecimiento.csv")

Crecimiento$Crecimiento <- as.factor(Crecimiento$Crecimiento)

boxplot(Crecimiento$Riego ~ Crecimiento$Crecimiento)
library(repmis)

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

