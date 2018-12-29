source('Funciones.R')

#t: tiempo que se demora en ejecutar un codigo
#def t: tiempo que se demora en recorrer la lista Ruts_validos
#Ruts_validos: Generar numeros de rut y almacenarlos en una lista
#Se generan 5000 numeros aleatorios entre 0:9999999 sin repeticion 
#Cada uno acompañado de su dv

t <- proc.time()
Ruts_validos <- list()
for(i in sample(0000000:9999999,5000,replace=F)){
  rut<- print(paste(i,"-",dv(i)))
  Ruts_validos<-c(Ruts_validos,rut)
}
proc.time() - t

#Tiempo que se demora en recorrer la lista Ruts_validos
> proc.time() - t
user  system elapsed 
5.34    0.08    5.50 
>   