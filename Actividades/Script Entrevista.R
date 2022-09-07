#KMRL

#Importar encuesta

Enc1 <- read.csv("Datos/Encuesta_codificada.csv", header = T)

# convertir variables a factores

Enc1$Entrev <- as.factor(Enc1$Entrev)
levels(Enc1$Entrev)


Enc1$Genero <- as.factor(Enc1$Genero)
levels(Enc1$Genero) 

Enc1$Carrera <- as.factor(Enc1$Carrera)
levels(Enc1$Carrera)

Enc1$Semestre <- as.factor(Enc1$Semestre)
levels(Enc1$Semestre)



#Funcion para transformar caracteres a fechas 

library(lubridate)
# Enc1$Fecha <- as_factor(Enc1$Fecha) #Pendiente de arreglar

#¿cual es el porcentaje de entrevistados por genero?

gen <- table(Enc1$Genero)
round(gen/length(Enc1$Genero)*100,1)



#¿Que equipo entrevistador tuvo mas encuestas?
table(Enc1$Entrev)
prop.table(ent)*100 
pie(prop.table(ent)*100)

#¿Cual es el porcentaje de alumnos entrevistados por carrera?
car <- table(Enc1$Carrera)
prop.table(car)*100

#¿Cuantos alumnos participaron por semestre?
sem <- table(sem)*100

#¿Cual es el rango de edad de los participantes?
range(Enc1$Edad)

#¿Como te enteraste de la facultad?
conFCF <- table(Enc1$oi_1)
prop.table(conFCF)*100
pie(prop.table(conFCF)*100)


#¿Fue tu primera opcion la FCF?
op <- table(Enc1$oi_2)
prop.table(of)*100

#¿Presentaste en otra facultad?
of <- table(Enc1$oi_2a)
prop.table(of)*100
