# Adivina el número
# Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar. Si el número
# es correcto debe imprimir "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!".
# Por ejemplo:
# $ ruby adivina.rb
# Adivina el número que estoy pensando: 5
# Felicitaciones, lo lograste!

# pseudocódigo
# 1- crear una clase llamada adivinar
# 2- definir un método de la clase llamado número de intentos
# 3- almacenar en el método los números ramdon
# 4- invocar el metodo de clase
# 5- solicitar por consola el número al usuario
# 6- crear una consición para validar si el número ingresado por el usuario es verdadero o es falso
# 7- retornar el resultado

# Se crea una clase
class Guess
  # se crea un metodo de clase con el self y se pasa como argumento el número
  def self.guess_num
    rand(1..10)
  end
end
# Invoco el método de la clase que me trae el número ramdon
guess = Guess.guess_num
p guess # imprimo para saber que lo traiga y cual de ellos es. 

puts 'Adivina el número' # solo un título
puts '*' * 20 # me imprime 20 veces para separar el resultado
print 'Ingresa un número: ' # Solicito al usuario el número
# Se crea un operador ternario para preguntar si el número que esta en guess es igual al que esta ingresando el cliente
# por teclado si es afirmativo imprime Felicitaciones, ese era! de lo contrario imprime Lo siento, intenta nuevamente!
puts guess == gets.chomp.to_i ? 'Felicitaciones, ese era!' : 'Lo siento, intenta nuevamente!'



