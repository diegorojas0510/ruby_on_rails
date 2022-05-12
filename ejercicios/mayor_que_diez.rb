#Escribe un programa para la consola que le pida un número al usuario y le diga si es mayor o menor/igual a 10. Por ejemplo:

print "Ingresa un número: "
num=gets.chomp.to_i

if num > 10
  puts "El #{num}: Es mayor a 10"
elsif num < 10
  puts "El #{num}: Es menor a 10"
elsif num == 10
  puts "El #{num}: Es igual a 10"
end

# funciona igual
#puts num > 10? "El número es mayor a diez" : "El número es menor o igual a 10"