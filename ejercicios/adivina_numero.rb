#Escribe un programa que piense un número de forma aleatoria y le pida al usuario que lo trate de adivinar. Si el número
# es correcto debe imprimir "Felicitaciones, ese era!", de lo contrario debe imprimir "Lo siento, intenta nuevamente!". Por ejemplo:
#$ ruby adivina.rb
#Adivina el número que estoy pensando: 5
#Felicitaciones, lo lograste!

num = rand(1...10)
print "Ingresa tu nombre: "
name = gets.chomp
print 'Adivina el número: '

#while num != gets.chomp.to_i
#  puts 'Intenta Nuevamente ingresa un número: '
#end
#puts "Felicitaciones! adivinaste que era el:  #{num}"

attemps = 0

while attemps <= 3
  if num > gets.chomp.to_i
    attemps += 1
    puts ' Intentalo de nuevo pista mayor al secreto'
  elsif num < gets.chomp.to_i
    attemps += 1
    puts ' Intentalo de nuevo pista menor al secreto'
  else
    puts  " Felicitaciones #{name} el número: #{num} era el secreto"
    puts  " Y en solo #{attemps} intentos"
  end
  print ' Final no va más lo siento!!!!' if attemps == 4
end