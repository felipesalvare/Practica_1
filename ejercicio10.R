
# EJERCICIO 10 ------------------------------------------------------------
rm(list=ls())
# Primero le pido al usuario que ingrese su nombre completo, su libreta universitaria
#y la cantidad de materias aprobadas. Esos datos luego se los asigno a un valor
nmbre <- readline("Ingrese su nombre: ")
aplldo <- readline("Ingrese su apellido: ")
lbrt <- readline("Ingrese su libreta universitaria en formato N/AA: ")
materias <- readline("Ingrese la cantidad de materias aprobadas: ")
# Ahora le asigno el largo de lbrt a otro valor y separo los valores en número y año
a <- nchar(lbrt)
N <- substr(lbrt,1,a - 3)
A <- substr(lbrt,a - 1,a)
# Luego, como debo asumir que se aprueba con 20 materias asigno un nuevo valor
#en el que calculo la cantidad de materias por aprobar
b <- as.numeric(materias)
c <- 20 - b
# Ahora le pido a la pantalla que muestre el mensaje correspondiente
print(paste0("El alumno ",nmbre," ",aplldo," se inscribió como alumno de Exactas en el puesto ",N,
             " en el año 20",A," y debe aprobar ",c," materias para obtener el título de grado."))
