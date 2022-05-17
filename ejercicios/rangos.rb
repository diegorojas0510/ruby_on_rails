#Escribe un programa para la consola que le pida al usuario dos números e imprima los números en ese rango

print "Ingresa un número: "
num1 = gets.chomp.to_i

print "Ingresa otro número: "
num2 = gets.chomp.to_i

(num1..num2).each do |i|
  puts "Rango de Números: #{i}"
end
