suma <- 0 #Se asgina a las letras "suma" el valor 0

for (numero in 1:999) { #Estamos asignando un conteo del 1 al 999
  
  #Asignacion de condicional de verdades "si"
  
  if (numero %% 3 == 0 & numero %% 5 == 0) {
    
    suma <- suma + numero
    
  }
}
# Imprimimos el resultado

print(suma)

print_tic_toc <- function(number) {
  if (number %% 3 == 0 && number %% 5 == 0) {
    print("TicToc")
  } else if (number %% 3 == 0) {
    print("Tic")
  } else if (number %% 5 == 0) {
    print("Toc")
  } else {
    print(number)
  }
}
# Loop from 1 to 100 and print the result for each number
for (number in 1:100) {
  print_tic_toc(number)
}

# Arreglo de amigos
amigos <- c("Ryan", "Kieran", "Mark", "Miguel")
# Filtrar los nombres de amigos con exactamente 4 letras
deberia <- amigos[nchar(amigos) == 4]
print(deberia)


library(dplyr)
filtrar_amigos <- function(amigos) {
  # Filtrar los nombres de amigos con exactamente 4 letras
  amigos_filtrados <- amigos[nchar(amigos) == 4]
  return(amigos_filtrados)
}
# Arreglo de amigos
amigos <- c("Ryan", "Kieran", "Mark", "Miguel")
# Obtener el resultado utilizando la función
resultado <- filtrar_amigos(amigos)
# Imprimir el resultado
print(resultado)

sumaDigitos <- function(numero) {
  suma <- 0
  while (numero > 0) {
    suma <- suma + (numero %% 10)
    numero <- floor(numero / 10)
  }
  return(suma)
}

# Ejemplo de uso
numero1 <- 12345
numero2 <- 9876
resultado1 <- sumaDigitos(numero1)
resultado2 <- sumaDigitos(numero2)
print(resultado1) # Debería imprimir 15 (1 + 2 + 3 + 4 + 5)
print(resultado2) # Debería imprimir 30 (9 + 8 + 7 + 6)

juego_adivinanza <- function() {
  # 1. Ingresa un número entre 1 y 9 desde el teclado
  my_guess_number <- as.integer(readline(prompt = "Ingresa un número entre 1 y 9: "))
  # Verificar que el número ingresado está dentro del rango válido
  if (my_guess_number < 1 || my_guess_number > 9) {
    stop("El número debe estar entre 1 y 9.")
  }
  # 2. Genera un número aleatorio entre 1 y 9
  numero_secreto <- sample(1:9, 1)
  # 3. Compara los números e imprime un mensaje
  if (my_guess_number == numero_secreto) {
    print("¡Bingo, tú ganas!")
  } else {
    print("Inténtalo de nuevo")
  }
}



