# Escribe un programa para la consola que le pida al usuario un número y cree una escalera como en el siguiente ejemplo:
print 'Ingresa el número 1: '
num = gets.chomp.to_i

num.times do |n|
  invertir = '#' * (n + 1)
  puts invertir
end

print 'Ingresa el número 2: '
num2 = gets.chomp.to_i

num2.times do |n|
  invertir = '#' * (num2 - n)
  puts invertir
end

print 'Ingrese la palabra que desea invertir: '
palabra = gets.chomp
puts "Palabra ingresada: #{palabra}"
palabra.reverse!
puts "Palabra invertida: #{palabra}"
