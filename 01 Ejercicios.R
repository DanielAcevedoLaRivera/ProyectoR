suma <- 0 #Se asgina a las letras "suma" el valor 0

for (numero in 1:999) { #Estamos asignando un conteo del 1 al 999
  
  #Asignacion de condicional de verdades "si"
  
  if (numero %% 3 == 0 & numero %% 5 == 0) {
    
    suma <- suma + numero
    
  }
}
# Imprimimos el resultado

print(suma)