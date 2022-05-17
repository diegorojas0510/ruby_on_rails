# strings
puts "Esto es un string"
puts 'Esto tambien es un string'

# Combinar los tipos de comillas
puts "Aqui puedo usar comilla sencilla 'AQUI'"
puts 'Aqui puedo usar comilla doble "AQUI"'

# O utilizar el caracter de escape
puts "Cuando necesito \"escapar\" las comillas"
puts 'Cuando necesito \'escapar\' las comillas'


# Numeros

puts 1 + 2
puts 59 / 2
puts "46546"
puts "46546".to_i  # convierte el string en el numero

# saber que tipo de objeto es
puts "46546".class
puts 46546.class

#  la nomenclatura de la docuemntacion es Clase#metodo  o Objeto#metodo, https://ruby-doc.org/core-3.1.2/String.html#method-i-upcase
puts 'Cuando'.upcase