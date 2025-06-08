

#Tercer punto
Tiempos <-c(11.3, 12.3, 8.3,15.2,9.7, 9.7,12.6, 7.8, 14.2, 9.7, 11.3, 12.6, 8.3,12.3,
            +  10.4,8.2,8.0,9.3,15.2,16)
boxplot(Tiempos, ylab=("Tiempos"), outline=TRUE, main="Boxplot Tiempos de 20 Robots")


#Cuarto punto
datos <- data.frame(persona = rep(c("Persona A", "Persona B"), each = 30), gastos=sample(1:100, 60, replace = TRUE))
boxplot(datos$gastos ~ datos$persona, ylab="Gastos", xlab="Persona", main="Boxplot Agrupado")





