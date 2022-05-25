# # Escalera
#
# Escribe un programa para la consola que le pida al usuario un número y cree una escalera como en el siguiente ejemplo:
#
# ```
# Ingresa un número: 5
# #
# ##
# ###
# ####
# #####
# ```
#
# En la primera línea se imprime un `#`, en la segunda dos, y así sucesivamente hasta el número que ingresó el usuario.
#
# Si el ejercicio te parece muy fácil intenta invertir la escalera:
#
# ```
# Ingresa un número: 5
# #####
# ####
# ###
# ##
# #
# ```

#pseudocodigo
# 1-solicitar al usuario un número
# 2-iterar el número de menor a mayor
# 3-solicitar al usuario otro número
# 4-iterar el número a la inversa para poder generar la escalera

print 'Ingresa el número 1: '
num = gets.chomp.to_i

num.times do |element|
  invertir = '#' * (element + 1) # Se declara la variable invertir donde se iguala al simbolo y se multiplica por
  puts invertir
end

print 'Ingresa el número 2: '
num2 = gets.chomp.to_i

num2.times do |element|
  invertir = '#' * (num2 - element)
  puts invertir
end

print 'Ingrese la palabra que desea invertir: '
palabra = gets.chomp
puts "Palabra ingresada: #{palabra}"
palabra.reverse!
puts "Palabra invertida: #{palabra}"
