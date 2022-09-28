# KENNY
# ENTREVISTA

Entrevista <- read.csv("Datos/Encuesta_codificada.csv", header = T)

Entrevista$Entrev <- as.factor(Entrevista$Entrev)
levels(Entrevista$Entrev)

Entrevista$Carrera <- as.factor(Entrevista$Carrera)
levels(Entrevista$Carrera)

Entrevista$Genero <- as.factor(Entrevista$Genero)
levels(Entrevista$Genero)

# Función para transformar carácteres a fechas

library(lubridate)
Entrevista$Fecha <- as.Date(Entrevista$Fecha)

# ¿Cuál fu el porcentaje de entrevistados por género?
gen <- table(Entrevista$Genero)
round(gen/length(Entrevista$Genero)*100,1)
pie(round(gen/length(Entrevista$Genero)*100,1))

# ¿Qué equipo entrevistador tuvo más encuestas?
ent <- table(Entrevista$Entrev)
prop.table(ent)*100
pie(prop.table(ent)*100)

# ¿Cuál es el porcentaje de alumnos entrevistados por carrera?
car <- table(Entrevista$Carrera)
prop.table(car)*100
pie(prop.table(car)*100)

# ¿Cuántos alumnos participaron por semetre?
sem <- table(Entrevista$Semestre)
prop.table(sem)*100
pie(prop.table(sem)*100)

# ¿Cuál es el rango de edad de los participantes?
range(Entrevista$Edad)

# ¿Cómo te enteraste de la facultad?
conFCF <- table(Entrevista$oi_1)
conFCF
prop.table(conFCF)*100
pie(prop.table(conFCF)*100,
    col=c("red", "orange", "pink", "blue", "green"))
# col=palette("buscar en internet") / paleta <- c("colores")

# ¿Fue tu promera opción la FCF?
op <- table(Entrevista$oi_2)
op
prop.table(op)*100
pie(prop.table(op)*100)

# ¿Presentantes en otra facultad?
of <- table(Entrevista$oi_2a)
of
prop.table(of)*100
pie(prop.table(of)*100)

# ¿Fue tu promera opción la FCF?
op <- table(Entrevista$oi_2)
op
prop.table(op)*100
pie(prop.table(op)*100)

# ¿Presentaste en otra facultad?
of <- table(Entrevista$oi_2a)
of
prop.table(of)*100
pie(prop.table(of)*100)

# ¿Estuviste inscrito en otra facultad?
fac <- table(Entrevista$oi_4)
fac
prop.table(fac)*100
pie(prop.table(fac)*100)

# ¿Dónde estaba inscrito?
fa <- table(Entrevista$oi_4a)
fa
prop.table(fa)*100
pie(prop.table(fa)*100)

# Convivencia entre alumnos
c.alum <- table(Entrevista$ef_1)
c.alum
prop.table(c.alum)*100
pie(prop.table(c.alum)*100)

# Instalaciones de la facultad
insf <- table(Entrevista$ins_1)
insf
prop.table(insf)*100
pie(prop.table(insf)*100)

# ¿Conoces la malla curricular de tu carrera?
mcu <- table(Entrevista$ap_1)
mcu
prop.table(mcu)*100
pie(prop.table(mcu)*100)

# ¿Entregas tareas a tiempo?
tarea <- table(Entrevista$ap_2)
tarea
prop.table(tarea)*100
pie(prop.table(tarea)*100)

# ¿Estás concentrado durante las clases?
clase <- table(Entrevista$ap_3)
clase
prop.table(clase)*100
pie(prop.table(clase)*100)


# GUARDAR LA BD CON LOS DATOS NUEVOS EN FORMATO.CSV
write.csv(Entrevista, "Datos/Encuesta_codificada.csv")

