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
  
#contarSaldoNegativo: ... -> int
#Definicion contarSaldoNegativo:
  
clientes <- list (list(1,"paulina",-22000),list(2,"ruben",-50000),list(3,"carlos",1000),list(4,"mary",-25000))

contarSaldoNegativo <- function(listaclientes){
  GenteSaldoNegativo <- 0
  for (cliente in listaclientes){
    if (cliente[3] < 0){
      GenteSaldoNegativo<- (GenteSaldoNegativo+1)
    }
  }
  return(GenteSaldoNegativo)
}

#Test
contarSaldoNegativo(clientes)


#sinvocales: string -> string sin vocales
#Definicion sinvocales: introducir x frase que sea devuelta sin las vocales
#Ejemplos: Chile campeon , El partido termino con 0 goles 

sinVocales <- function(oracion){
  stringsinvocales <- ""
  strspliteada <- strsplit(oracion, "")[[1]]  
  for (letra in strspliteada){
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && letra != "A" && letra != "E"
       && letra != "I" && letra != "O" && letra != "U") {
      stringsinvocales <- paste(stringsinvocales, letra, sep="")
    }
  }
  return(stringsinvocales)
}

#Test
Frase <- "Chile campeon"
sinVocales(Frase)
Frase_2 <- "El partido termino con 0 goles"
sinVocales(Frase_2)


#strsplit: sting -> int
#Def strsplit: función para contar palabras


strsplit(a,b)[[1]]