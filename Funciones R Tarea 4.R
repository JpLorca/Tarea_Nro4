aceleracion <- function(tiempo){
  tiempo*tiempo
}



listab <- list();

for(i in 1:100){
  listab <-  c(listab,aceleracion(i))
}



plot(lista,listab)


listaSeno <- list();

for(i in 1:100){
  listaSeno <-  c(listaSeno,sin(i))
}

plot(lista,listaSeno)

lista<-c("caballlo", "perro", "gato")

for(i in 1:length(lista) ){
  
  print(i)
}
