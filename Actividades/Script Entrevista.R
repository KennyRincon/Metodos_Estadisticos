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



# ¿Que equipo entrevistador tuvo mas encuestas?
table(Enc1$Entrev)
prop.table(ent)*100 
pie(prop.table(ent)*100)

# ¿Cual es el porcentaje de alumnos entrevistados por carrera?
car <- table(Enc1$Carrera)
prop.table(car)*100

# ¿Cuantos alumnos participaron por semestre?
sem <- table(sem)*100

# ¿Cual es el rango de edad de los participantes?
range(Enc1$Edad)

# ¿Como te enteraste de la facultad?
conFCF <- table(Enc1$oi_1)
prop.table(conFCF)*100
pie(prop.table(conFCF)*100)

 
# ¿Fue tu primera opcion la FCF?
op <- table(Enc1$oi_2)
prop.table(op)*100

# ¿Presentaste en otra facultad?
of <- table(Enc1$oi_2a)
prop.table(of)*100

# Estuviste inscrio en otra facultad?
io_4a <- table(Enc1$oi_4a)
prop.table(oi_4a)*100
oi_4a

#Convivencia
ef_1 <- table(Enc1$ef_1)
c.alum
prop.table(c.alum)*100
pie(prop.table(c.alum)*100)

#Instalaciones de la facultad
insf <- table(Entrevista$ins_1)
insf
prop.table(insf)*100
pie(prop.table(insf)*100)

#Conoces la malla curricular de tu carrera?
mcu <- table(Entrevista$ap_1)
mcu
prop.table(mcu)*100
pie(prop.table(mcu)*100)

#Entregas tareas a tiempo?
Tarea <- table(Entrevista$ap_2)
pie(prop.table(insf)*100)
tarea
prop.table(tarea)*100
pie(prop.table(tarea)*100)

#Estas concentrado durante clase?
clase <- table(entrevista$ap_3)
clase
prop.table(clase)*100
pie(prop.table(clase)*100)



#Guardar la BD con los datos nuevos en formato csv
write.csv(Enc1, "Encuesta_codificada.csv")
