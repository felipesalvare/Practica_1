
#####################práctica 1#######################

# ej 1 --------------------------------------------------------------------

.Machine$double.eps#me dice el número positivo mas chico que puede generar la maquina tal que 1+x!=1
.Machine$double.neg.eps#Me dice el número positivo más chico que puede generar la maquina tal que 1-x!=1
.Machine$double.xmin#Me dice el número más chico no nulo que puede generar la maquina
.Machine$double.xmax#Me dice el número más grande no nulo que puede generar la maquina
.Machine$double.base#Me dice la base para la representación de punto flotante
.Machine$double.digits#Me dice la base de números en el significando del punto flotante
.Machine$integer.max#Me dice el número entero más grande que puede ser representado

# ej 2 --------------------------------------------------------------------

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

a<-0.85   #Designo a como el número 0.85
b<-round(a) #Desingo b como la funcion round(a), que en este caso redondeó para arriba por lo que b=1
b<-ceiling(a) #Deigno b como la función ceiling(a), que me devuelve el número redondeado para arriba siempre, por lo que b=1
b<-floor(a)   #Designo b como la función floor(a), que me devuelve el número redondeado para abajo siempre, por lo que b=0
b<-trunc(a)   #Designo b como la finción trunc(b), que me devuelve el número truncado hacia 0, por lo que b=0

# ej 4 --------------------------------------------------------------------

# a) ------ 
##Quiero armar un programa que me devuelva la linea "Hola mundo". Para eso voy a usar la funcion "readline"
readline("Hola Mundo") #Al correr este programa se puede leer la frase "Hola Mundo" en la consola

# b) ------
##Quiero armar un programa que pida ingresar un número y que luego imprima por pantalla el número ingresado.
numero<-readline("ingrese un número cualquiera:") #Designo mi valor "numero" como los números que ingrese el usuario.
print(numero) #Pido que el programa muestre en pantalla el valor "numero"

# ej 5 --------------------------------------------------------------------
# item a---------
#Primero le designo números a todos mis valores
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



