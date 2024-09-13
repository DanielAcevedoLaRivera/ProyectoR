##Mi primer calculo

1 + 1

2 * 3

## Mi primer print

print("Hola")

## Variables

x = 2

y = 5

xy = "Hey"

print(paste(x, y, xy)) ##Asume espacios entre conceptos

print(paste(x, y, xy, sep = "")) ##sep es para indicar el separador

## Librerias

install.packages("tidyverse")

library(tidyverse)

datos = iris

View(datos)

select(datos, Species) ## comando para seleccionar columnas (nombre data frame, nombre columna)

filter(datos, "1") ## comando para seleccionar fila (nombre data frame, nombre columna)

## Funciones

x = 10001

x %% 2

print(ifelse(x %% 2 == 0, "Par", "Impar")) # similar a funcion si en excel

## Funcion 2

es_par <- function(numero) {
  if (numero %% 2 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

#Ejemplo

numero1 <- 10
numero2 <- 7
print(es_par(numero1))

print(es_par(numero2))

z = 1
z == 2
z >= 1

(z == 2) + (z >= 1) #Falso = 0 // Verdadero = 1


nombre = readline(prompt="Mi nombre es: ") ##input

print(paste("Hola soy", nombre))

#Operador pipe

result01 <- sqrt(mean(log10(abs(c(-2,-10, 3, 4, 8)))))

result02 <- c(-2,-10, 3, 4, 8) %>% 
  abs() %>% #El primero en el orden de lineas es el primero a aplicarse en el valor anterior
  log10() %>% 
  mean() %>% 
  sqrt()

result01
result02





