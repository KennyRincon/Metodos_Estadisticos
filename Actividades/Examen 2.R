#Examen
#Kenny Rincon

#Ejercicio 1
data(InsectSprays)
head(InsectSprays)

boxplot(InsectSprays$count ~ InsectSprays$spray,
         xlab = "Tipo de Insecticida",
         ylab = "Conteo",
         col = "pink")

#Pregunta 1: = 6 tipos
#Pregunta 2: = Todas tienen 12 observaciones 
#Pregunta 3: = 72 datos

#Ejercicio 2 
#Pregunta 4: = Se debe de usar el insecticida y hacer el conteo de los insectos muertos
#Pregunta 5:= Sip
#Pregunta 6: = Por el numero de insectos que murieron y la varianza es amplia en algunos
#Pregunta 7: = C y D
#Pregunta 8: = Seria el F

#Aplica funcion Tapply
tapply(InsectSprays$count, InsectSprays$spray, mean)
tapply(InsectSprays$count, InsectSprays$spray, var) 
#Pregunta 9: = A= 14.500000, B= 15.333333, C= 2.083333, D= 4.916667, E=3.500000, F=16.666667 
#Pregunta 10:= A=22.272727, B=18.242424, C=3.901515, D=6.265152, E=3.00, F=38.606061
#Pregunta 11: = La F
#Pregunta 12: = La E
  
#Realiza prueba ANOVA 
aov(InsectSprays$count ~ InsectSprays$spray)
nm.aov <- aov(InsectSprays$count ~ InsectSprays$spray)
summary(nm.aov)

#Pregunta 13: Ho:No hay diferencia con las varaianzas, H1: Hay diferencias entre las varianzas
#Pregunta 14: Serian 5
#Pregunta 15: 66
#Pregunta 16: 71
#Pregunta 17: 2669
#Pregunta 18: 34.7
#Pregunta 19: <2e-16
#Ejercicio 3
TukeyHSD(nm.aov)
plot(TukeyHSD(nm.aov))

