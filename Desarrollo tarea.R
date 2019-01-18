source('Funciones.R')

#Ejercicio 1

#Ruts: Lista de Int y string intercalado.
#Def Ruts: Lista de 5001 datos distintos, de 8 digitos (rut)
#y el digito verificador (dv) asociado al dato
#Ejemplo: Ruts
# [1] 17664987-9

#dv: Int->String
#Def dv: Retorna el digito verificador de cada eleento de la lista para validar el Rut
#Ejemplo: dv(67534287)->k


#Test

dv(17664987)

rm(Ruts)

t<-proc.time()
Ruts<-list()
for(i in 17664987:(17664987+5000)){
  rut<-print(paste(i,"-",dv(i)))
  Ruts <- c(Ruts,rut)
}
proc.time()-t


#Ejercicio 2

#Contar: String->String
#Def contar: "strsplit(a,b)[[1]]":
#             Seprara y cuenta las palabras ingresadas en "a"
#             Separadas por la condiciOn de "b"
#Ejemplo: Contar<-strsplit(" Porque la llama que llama estando en llamas me llama, alguien más llama "," ")[[1]] 
#         
#   ->    [1] ""        "Porque"  "la"      "llama"   "que"     "llama"   "estando" "en"      "llamas" 
#         [10] "me"      "llama,"  "alguien" "mas"     "llama"  

#Minuscula: String->String
#Def Minuscula: considera todas las letras como minuscula 
#Ejemplo: Minuscula(Contar)
#        [1] ""        "porque"  "la"      "llama"   "que"     "llama"   "estando" "en"      "llamas" 
#        [10] "me"      "llama,"  "alguien" "mas"     "llama"  

#Unico: String->String
#Def Unico: Cuenta solo una palabra sin repetir y en minisculas
#Ejemplo: unico(Minuscula)
# ->     [1] "porque"  "la"      "llama"   "que"     "estando" "en"      "llamas"  "me"      ","      
#        [10] "alguien" "mas"   


Minuscula<-tolower(Contar)
Unico<-unique(Minuscula)
Minuscula2<-tolower(Contar2)
Unico2<-unique(Minuscula2)

#Test1
Contar
Minuscula
Unico

#Test2
Contar2
Minuscula2
Unico2


#Contado las palabras
ContandoLlamas<-list()
for(i in 1:length(Unico2)){
  print(Unico2[i])
  contador <- 0
  for (y in 1:length(Minuscula2)){
    print(Minuscula2[y])
    if(Unico2[i]==Minuscula2[y]){
      print(contador <- contador+1)
    }
  }
  ContandoLlamas<-c(ContandoLlamas,contador) 
}

#Ejercicio 3
#SaldoNegativa: String->Int
#Def: Cuenta la cantidad de clientes
# que tienen saldo negativo insrtos en una lista.
#Ejemplo: SaldoNagito(ListaClientes) -> 4

ListaClientes<-list(list(1,"A",-2500),
                    list(2,"B",-3400),
                    list(3,"C",-1500),
                    list(4,"D",5550),
                    list(5,"E",1670),
                    list(6,"F",23990))
#Test
SaldoNegativo(ListaClientes)


#Ejercicio 4
#SaldoNegativa: String->String
#Def: Retorna las frases en una oracion sin vocales
#Ejemplo: SinVocales('El partido termino con 0 goles')->'l prtd trmn cn 0 gls'

Oracion<- "los meteoritos le dieron en la cabeza"

#Test
SinVocales(Oracion)
