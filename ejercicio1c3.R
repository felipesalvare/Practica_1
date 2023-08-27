rm(list=ls())
###########################ej_1###########################

# a) ----------------------------------------------------------------------


Tarjeta_de_credito=readline("Cuál es el número de tu tarjeta de credito?:")
x<-nchar(Tarjeta_de_credito)
ultimos<-substr(Tarjeta_de_credito,x-5,x)
print(paste0("los ultimos 6 digitos de la tarjeta son: ",ultimos))

# b) ----------------------------------------------------------------------


rm(list=ls())
vencimiento=readline("Ingrese la fecha de vencimiento de su tarjeta (MM/AAAA):")
y<-nchar(vencimiento)
anio<-substring(vencimiento,y-3,y)
print(paste0("El anio de vencimiento de la tarjeta es: ",anio))

