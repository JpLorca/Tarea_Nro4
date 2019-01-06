source('Funciones.R')

#t: Tiempo de demora en ejecutar un código
#def t: Tiempo captado en recorrer una lista de ruts_válidos
#Ruts_validos: Generar RUTs válidos y almacenarlos en una lista
#Se generan 5000 números de manera aleatoria compuestos entre 0:9999999, evitando repetirlos 
#Cada uno acompañado de su dv

t <- proc.time()
Ruts_validos <- list()
for(i in sample(0000000:9999999,5000,replace=F)){
  rut<- print(paste(i,"-",dv(i)))
  Ruts_validos<-c(Ruts_validos,rut)
}
proc.time() - t

#Tiempo de demora en recorrer la lista Ruts_validos
> proc.time() - t
user  system elapsed 
5.34    0.08    5.50 
>   
