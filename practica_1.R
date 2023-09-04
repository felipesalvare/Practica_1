
#####################práctica 1#######################

# ej 1 --------------------------------------------------------------------
rm(list=ls())
.Machine$double.eps#me dice el número positivo mas chico que puede generar la maquina tal que 1+x!=1
.Machine$double.neg.eps#Me dice el número positivo más chico que puede generar la maquina tal que 1-x!=1
.Machine$double.xmin#Me dice el número más chico no nulo que puede generar la maquina
.Machine$double.xmax#Me dice el número más grande no nulo que puede generar la maquina
.Machine$double.base#Me dice la base para la representación de punto flotante
.Machine$double.digits#Me dice la base de números en el significando del punto flotante
.Machine$integer.max#Me dice el número entero más grande que puede ser representado

# ej 2 --------------------------------------------------------------------
rm(list=ls())
a<-as.integer(1) #estoy designando a mi variable "a" el valor 1 como un número entero
b<-as.integer(2) #estoy designando a mi variable "b" el valor 2 como un número entero
a/b             #divido a "a"(1) por "b"(2)
class(a/b) #le pregunto a la maquina cual es la clase del resultado de la división.
           #Si bien designé a y b como numeros enteros, la clase de la operación entre
           #estos dos números es del tipo númerica (ya que 0.5 no es un número entero).

a<-as.double(1)#le asigno a mis variables a y b los valores 1 y 3 respectivamente y le pido que sean de doble precisión
b<-as.double(3) 
a/b            #divido a por b y me da el resultado (0.3)
class(a/b)    #le pregunto la clase del resultado y me dice que es de tipo "numérico"

a<-as.single(1) #le asigno a mis variables a y b los mismos valores pero esta vez le pido que sean de simple precisión
b<-as.single(3)
a/b  
class(a/b)    #El resultado es el mismo que si fueran de doble precisión ecxpeto que se le adjudica
               #el atributo Csingle que se usa en la interfaz C. y Fortran. R no tiene un dato de precisión simple. 

a<-as.integer(2) #Designo "a" como el número 2 y le pido que sea entero
b<-pi #Designo "b" como el número pi
is.integer(a) #Le pregunto a la maquina si "a" es un número entero
is.integer(b) #Le pregunto a la máqquina si "b" es un número entero
             #Como designe "a" de tipo entero, la función me devuelve TRUE, que significa que es efectivamente de tipo entero
             #En cambio cuando pregunto si "b" es entero me devuelve FALSE ya que designe que "b" fuera igual a pi
             #un número real que asigna la clase numeric a "b"
is.numeric(a) #Pregunto si a es de tipo numerico
is.numeric(b) #pregunto si b es de tipo numérico
              #En este caso ambos resultados dan TRUE porque si bien designe a "a" como numero entero, tambien es un número real.
is.double(a) #Pregunto si a es de tipo doble
is.double(b) #Pregunto si b es de tipo doble
             #En este caso para a me dice FALSE y para b TRUE porque los números de tipo double abarcan a aquellos que tienen decimales.
             #Para resumir, el tipo numeric integra dos subtipos: integer para los números enteros y double para los decimales.
a<-as.integer(3) #designo a como el numero 3 y le pido que sea entero
b<-as.integer(pi) #deigno b como el numero pi y le pido que sea entero
a*b            #multipico ambos valores
               #Al pedirle a "b" que tome pi como un numero entero, la función redondeó el 3,14 a 3, por lo 
               #que: a*b=9 (integer)

# ej 3 --------------------------------------------------------------------
rm(list=ls())
a<-0.85   #Designo a como el número 0.85
b<-round(a) #Desingo b como la funcion round(a), que en este caso redondeó para arriba por lo que b=1
b<-ceiling(a) #Deigno b como la función ceiling(a), que me devuelve el número redondeado para arriba siempre, por lo que b=1
b<-floor(a)   #Designo b como la función floor(a), que me devuelve el número redondeado para abajo siempre, por lo que b=0
b<-trunc(a)   #Designo b como la finción trunc(b), que me devuelve el número truncado hacia 0, por lo que b=0

# ej 4 --------------------------------------------------------------------
rm(list=ls())
# item a) ------ 
##Quiero armar un programa que me devuelva la linea "Hola mundo". Para eso voy a usar la funcion "readline"
readline("Hola Mundo") #Al correr este programa se puede leer la frase "Hola Mundo" en la consola

# item b) ------
##Quiero armar un programa que pida ingresar un número y que luego imprima por pantalla el número ingresado.
numero<-readline("ingrese un número cualquiera:") #Designo mi valor "numero" como los números que ingrese el usuario.
print(numero) #Pido que el programa muestre en pantalla el valor "numero"

# ej 5 --------------------------------------------------------------------
# item a---------
#Primero le designo números a todos mis valores
rm(list=ls())
a<-1
b<-2
c<-3
d<-5
e<-2
f<--4
g<-1/3
#Ahora voy a realizar las siguientes operaciones para estos valores
(a+b)/(c+d)+e^2 #El resultado es 4.375
(a+b)/(c+d/(e+f)) #El resulutado es 6
((a+1)^2-1/((c+d)^2))/((f+g)^4) #El resultado es 0.02204319
(3*(a^2)-2*a)/(7*(b^3)+4*(b^2)-2) #El resultado es 0.01428571

#Ahora vuelvo a realizar las operaciones pero con otros valores 
rm(list=ls())
a<-1
b<-2
c<-3
d<--3
e<-4
f<--4
g<-4
(a+b)/(c+d)+e^2 #El resultado da infinito ya que estoy diviendo por 0
(a+b)/(c+d/(e+f)) #El resultado da 0, ya que d/(e+f)=inf
((a+1)^2-1/((c+d)^2))/((f+g)^4) #El resultado es -infinito, ya que -1/(c+d) tiende a menos infinito
(3*(a^2)-2*a)/(7*(b^3)+4*(b^2)-2) #El resultado es 0.01428571

# item b -----------------------
rm(list=ls())
a<-1 #designo valores a,b y c como numeros reales
b<-2
c<-3
#Ahora realizo las operciones que pide ele ejercicio para asi evaluarlas
a / b / c #El resultado es 0.166667, la maquina dividio primero a por b y luego a/b por c
a / ( b / c )# El resultado es 1.5, la máquina deividio a por el resultado de b/c
( a / b ) / c #El resultado es 0.166667, el mismo caso que la primer operación
a + b * a - c #El resltado es 0, la máquina sumo a mas el resultado de b*c y luego restó c
( a + b ) * ( a - c ) #El resultado es -6, la máquina multiplicó el resultado de a+b por el de a-c
( a + b ) * a - c #El resultado es 0, la máquina multiplicó el resultado de a+b por a y luego le resto c
( -a ) ^ b #El resultado es 1, la máquina elevo -a a el valor de b


# ej 6 --------------------------------------------------------------------
# Programa para calcular la inversa de un número
rm(list=ls())
a <- readline(" Ingrese un numero ")
x<- as.numeric(a)
inversa_x <- (1/x)
inversa_x

# item a)-----
#voy a ejecutar el programa para los siguientes valores y escribir el resultado
## 1.00---> resultado: 1.00
## 3.00---> resultado: 0.333333333
## -20.00---> resultado: -0.05
## 1000.0---> resultado: 0.001
## 1.0e-400---> resultado: inf
# el programa funciona correctamente

# item b)-----
#voy a ejecutar el programa para los siguientes valores y escribir el resultado
## 0.0---> resultado: inf (El limite de una numero divido por 0 tiende a infinito)
## "pepe"---> resultado: NA (Como "pepe" es de tipo caracter y ademas son letras, pedirle que sea numerico no va funcionar)

# item c)----
#Ahora voy a editar el archivo cambiando "x" por "X" en la linea correspondiente al calculo de la inversa
rm(list=ls())
a <- readline(" Ingrese un numero ")
x<- as.numeric(a)
inversa_x <- (1/X)
inversa_x
## resultado: El programa me da error porque R es "case sensitive", es decir que no es lo mismo escribir x minuscula que x mayuscula
## Si bien yo tengo definido mi valor "x" no es así para un valor "X"

# item d)-----
#Ahora voy a ejecutar el archivo cambiando la función "readline" por "readlin"
rm(list=ls())
a <- readlin(" Ingrese un numero ")
x<- as.numeric(a)
inversa_x <- (1/X)
inversa_x
## Resultado: El programa da error porque la funcion "readlin" no existe. No es lo mismo escribir "readline" que "readlin"


# ej 7 --------------------------------------------------------------------

# item a)-----
rm(list=ls())
#Quiero armar un programa tal que se ingrese por pantalla el valor de una latitud y que el programa
#calcule y muestre por pantalla el valor del parámetro de Coriolis.
## El parametro de coriolis esta dado por la ecuación f=2*a*sen(b), siendo a la velocidad angular y b la latitud.
a<-readline("ingrese la latitud para la cual quiere conocer el parametro de Coriolis (solo escriba los números) ") #pido que ingresen la latidud
x<-as.numeric(a) #pido que la latitud ingresada sea de clase numérica
y<- x * ( pi / 180 )#cambio la latitud de grados a polares y se lo asigno a un valor y
z<- sin(y) #asigno el resultado de sin(y) a un valor z
cor <- "2*(velocidad angular)*" # asigno el resto de la ecuacion a un valor "cor"
print(paste("El parametro de Coriolis es: ",cor,z,sep="")) #uno el cartel creado con el valor z y digo que lo muestre en la pantalla

# item b)-----   
rm(list=ls())
#Quiero armar un programa que me cambie al ingresar una temperatura en fharenheit la cambie a celsius
f <- readline("Ingrese un valor de temperatura en grados Fahrenheit: ")# Pido que el usuario ingrese una temperatura en Farhenheit
x <- as.numeric(f) #Asigno los grados de clase numerico a un valor x
c <- ( x - 32 ) * ( 5 / 9 ) #Le asigno la ecuación para el cambio de grado a un valor c
print(paste("La temperatura en grados Celsius es: ",c,sep="")) #Pido que la pantalla muestre la oración "La temperatura en grados celsius es: "x"

# item c)-----
rm(list=ls())

a <- readline("Ingrese un valor de temperatura en unidades Kelvin")
b <- readline("Ingrese un valor de densidad en gramos sobre centímetros cúbicos")
t <- as.numeric(a)
d <- as.numeric(b)
p <- t * d
print(paste("La temperatura ingresada es: ",a," grados Kelvin",sep=""))
print(paste("La densidad ingresada es: ",b," gramos sobre centimetros cúbicos",sep=""))
print(paste("La presión calculada es: ",p," atmósferas",sep=""))#esto no esta bien, tengo que recordar la ley de gases ideales

# item d)-----
rm(list=ls())

a <- readline("Ingrese un valor la longitud del hilo en metros (solo ingrese el número): ")
l <- as.numeric(a)
g <- 10 #Gravedad en metros sobre segundo al cuadrado
c <- l / g #Resultado de longitud divido gravedad
t <- 2 * pi * sqrt(c)
print(paste0("El periodo de el pendulo en es: ",t," segundos."))


# ej 8 --------------------------------------------------------------------

# item a) -----
rm(list=ls())
#Este script pide que se ingrese el año, el mes y el dia por separado para luego devolverlo como YYYY.MM.DD
y <- readline("Ingresar año (YYYY): ")
m <- readline("Ingresar mes (MM): ")
d <- readline("Ingersar día (DD): ")
fecha <- paste(y,m,d,sep=".")
print(fecha)

# item b) -----
rm(list=ls())
a <- readline("Ingrese la fecha en el formato YYYY-MM-DD: ")
b <- substr(a,1,4)
c <- substr(a,6,7)
d <- substr(a,9,10)
print(paste0("La fecha ingresada es: ",d," del ",c," del ",b))

# item c) -----
rm(list=ls())
a <- readline("Ingrese su nombre: ")
b <- nchar(a)
c <- substr(a,1,1)
d <- substr(a,b,b)
print(paste0(c,d))
