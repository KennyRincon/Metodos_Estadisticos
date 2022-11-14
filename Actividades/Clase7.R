Entrevista <- read.csv("Datos/Encuesta_codificada.csv", header = T)

library(dplyr)                                       

fix(Entrevista)
# GUARDAR LA BD CON LOS DATOS NUEVOS EN FORMATO.CSV
write.csv(Entrevista, "Datos/Encuesta_codificada.csv")

Seg.opcion <- Entrevista %>%
  filter(oi_2 == "NO")
Prim.opcion <- Entrevista %>%
  filter(oi_2 == "SI")

# REVOVER OBJETOS
rm(SEg.opcion)
rm(oi2_no)

barplot(round(gen/length(Entrevista$Genero)*100,1),
        ylim = c(0, 100),
        xlab = "Género",
        ylab = "Porcentaje",
        col = "lightyellow")

ofac <- table(Entrevista$oi_2b)
ofac
prop.table(ofac)*100

