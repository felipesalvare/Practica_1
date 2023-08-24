##########################ej_2###############################

rm(list=ls())
nombre<-readline("indique su nombre de pila:")
apellido<-readline("indique su apellido:")
materia<-readline("indique el nombre de la materia que esta cursando:")
aula<-readline("indique el número de aula en la que cursa dicha materia:")
pabellon<-readline("indique el número del pabellón en el que este cursando (0,1,2 o 3):")
turno<-readline("indique el turno en el que esta cursando (maniana, tarde o noche):")

print(paste0("¡Bienvenido, ",apellido," ",nombre,
             " a Exactas! Te esperamos en ",materia,
             " en el aula ",aula,", Pab.",pabellon,
             " por la ",turno,"."))
