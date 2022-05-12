# Escribe un programa para la consola que le pida al usuario ingresar dos números e imprima la suma de los dos números. Por ejemplo:

# $ ruby suma.rb
# Ingresa el primer número: 5
# Ingresa el segundo número 5

# El resultado es 10

print "Ingrese un número: "
num1= gets.chomp.to_i
print "Ingrese otro número: "
num2= gets.chomp.to_i

puts "Suma: #{num1+num2}"
puts "Resta: #{num1-num2}"
puts "Multiplicación: #{num1*num2}"
puts "División: #{num1/num2}"
puts "Potencia: #{num1**num2}"
puts 5 > 3
puts 5 >= 3
puts 4 < 4
puts 4 <= 4
puts 2 == 2
puts 2 != 2
puts "Ruby" == "JavaScript"
puts "Ruby" != "JavaScript"


