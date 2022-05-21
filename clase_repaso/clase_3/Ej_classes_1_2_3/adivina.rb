# Adivina el número
# Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar. Si el número
# es correcto debe imprimir "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!".
# Por ejemplo:
# $ ruby adivina.rb
# Adivina el número que estoy pensando: 5
# Felicitaciones, lo lograste!

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
print "Ingresa un número: "
# Se crea un operador ternario para preguntar si el número que esta en guess es igual al que esta ingresando el cliente
# por teclado si es afirmativo imprime Felicitaciones, ese era! de lo contrario imprime Lo siento, intenta nuevamente!
puts guess == gets.chomp.to_i ? 'Felicitaciones, ese era!' : 'Lo siento, intenta nuevamente!'



