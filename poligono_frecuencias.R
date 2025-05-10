#trabajo 2 corte 2 por albeiro naranjo
# punto 1 - poligono de frecuencias 
Tiempos <-c(11.3, 12.3, 8.3,15.2,9.7, 9.7,12.6, 7.8, 14.2, 9.7, 11.3, 12.6, 8.3,12.3,10.4,8.2,8.0,9.3,15.2,16)
agru <- Agru <- hist(Tiempos,breaks=c(7.8,9.2,10.6,12,13.4,14.8,16.2), right=F, include.lowest = T)
tar <- data.frame(agru$mids, agru$counts)
colnames(tar) <- c("Marca", "Frecuencia")
agru<-hist(Tiempos,breaks=c(7.8,9.2,10.6,12,13.4,14.8,16.2),labels=T,right=F,include.lowest=T,col="lightblue",xlab="Minutos",ylab="No. de Robots",main="Histograma de la variable tiempo", ylim = c(0,7), xlim=c(8,16))
par(new = TRUE)
plot(tar$Marca, tar$Frecuencia,col="red", type="b", lwd=2,axes = F, ann = F, ylim = c(0,7), xlim=c(8,16))


# punto 2 - media geometrica
crecimiento <- c(1.05, 1.12, 1.08, 1.03, 1.15)
media_geom <- prod(crecimiento)^(1/length(crecimiento))
print(paste("Media geométrica:", round(media_geom, 4)))

#punto 3 -media armonica
velocidades = c(60,80,90,75,67,87)
n <- length(velocidades)
sum_inversas <- sum(1/velocidades)
media_arm <- n / sum_inversas
print(paste("Media armónica (velocidad promedio):", round(media_arm, 2), "km/h"))

#punto 4- media ponderada
notas <- c(85, 90, 70, 95)
pesos <- c(0.3, 0.4, 0.2, 0.1)
media_ponderada <- sum(notas * pesos) / sum(pesos)
print(paste("Nota final (media ponderada):", round(media_ponderada, 3)))
