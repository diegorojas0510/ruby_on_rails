## Adivina el número (varios intentos)
# Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar (como en uno
# de los ejercicios anteriores). La diferencia es que esta vez el usuario puede intentar indefinidamente
# hasta que encuentre el número. Por ejemplo:
# $ ruby adivina_intentos.rb
# Adivina el número que estoy pensando: 4
# Lo sentimos! Intenta nuevamente: 5
# Lo sentimos! Intenta nuevamente: 7
# Felicitaciones, lo encontraste!
# Si deseas ir un paso más allá intenta limitar el número de intentos a 3 o 5 :)

# Se crea una clase
class Guess
  # se crea un metodo de clase con el self y se pasa como argumento el número
  def self.guess_num(num)
    @num = num
  end
end

guess = Guess.guess_num(rand(1..10))
p guess

puts 'Adivina el número'
puts '*' * 20
# Se crea un operador ternario para preguntar si el número que esta en guess es igual al que esta ingresando el cliente
# por teclado si es afirmativo imprime Felicitaciones, ese era! de lo contrario imprime Lo siento, intenta nuevamente!
# puts guess == num ? 'Felicitaciones, ese era!' : 'Lo siento, intenta nuevamente!'

print 'Ingrese número de intentos: '
attemps = gets.chomp.to_i # capturo lo que ingresa el cliente por teclado que son las cantidades de veces que quiere hacer el intento
count = 1 # inicio el contador en 1
while count <= attemps # condicón mientras el contador sea menor o igual a la variable de intentos
  print 'Ingrese un número: ' # solicito el número del cliente
  num = gets.chomp.to_i # obtengo el número en el método gets y con chomp le quito el salto de linea, y lo conviero a integer
  if guess == num # pregunto si lo que tiene mi clase es igual a lo ingresado por teclado
    puts "Felicitaciones, ese era el Número: #{num}" # imprimo y interpolo el número correcto 
    count = attemps + 1 # para que el ciclo termine por haber ganado igualo el contador con el intento y le sumo 1 para que salga del cliclo
    # p attemps
  else
    if count == attemps # si  contador es igual a intentos 
      puts 'Perdiste lo siento!' # Imprime que perdio
    else
      puts 'Lo siento, intenta nuevamente!' # si no es igual ingresa al #else e imprime que intente nuevamente 
    end
    count += 1 # si esto no se cumple el contador se incrementa para un núevo intento
  end
end

