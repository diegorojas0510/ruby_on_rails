#Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar. Si el número
# es correcto debe imprimir "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!". Por ejemplo:
#$ ruby adivina.rb
#Adivina el número que estoy pensando: 5
#Felicitaciones, lo lograste!

num = rand(1...10)
print "Adivina el número: "
while num != gets.chomp.to_i
  puts "Intenta Nuevamente ingresa un número: "
end
puts "Felicitaciones! adivinaste que era el:  #{num}"

