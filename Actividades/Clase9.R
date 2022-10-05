# KENNY RINCON
# SEMANA 9 05/10/2022
# ANALISIS DE VARIANZA ANOVA


library(repmis)

Paraje <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

tapply(Paraje$DAP, Paraje$Paraje, mean)
tapply(Paraje$DAP, Paraje$Paraje, sd)                      
tapply(Paraje$DAP, Paraje$Paraje, median)                      
tapply(Paraje$DAP, Paraje$Paraje, var)                      
tapply(Paraje$DAP, Paraje$Paraje, length)                      


boxplot(Paraje$DAP ~ Paraje$Paraje, col = "blue")

 