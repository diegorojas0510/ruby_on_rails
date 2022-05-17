# Escribe un programa para la consola que le pida al usuario su año de nacimiento e imprima la generación a la que pertenece:
# "Gran generación" si el año es menor a 1945
# "Baby boomer" si es entre 1945 y 1964
# "X" si es entre 1965 y 1981
# "Millenial" si es entre 1982 y 1994
# "Z" si es igual o mayor a 1995
# Por ejemplo:
# $ ruby generaciones.rb
# Ingresa tu año de nacimiento: 1920
# Gran generación
# $ ruby generaciones.rb
# Ingresa tu año de nacimiento: 1945
# Baby boomer
# $ ruby generaciones.rb
# Ingresa tu año de nacimiento: 1965
# $ ruby generaciones.rb
# Ingresa tu año de nacimiento: 1982
# Millenial





print "Cual es tu año de nacimiento: "
year = gets.chomp.to_i


# if year < 1945
#  puts "Gran generación"
# elsif year == 1945 || year <= 1964
#  puts "Baby boomer"
# elsif year == 1965 || year <= 1981
#  puts "X"
# elsif year == 1982 || year <= 1994
#  puts "Millenial"
# elsif year >= 1995
#  puts "Z"
# end


generaciones = { granGeneracion: 1945,
               baby_boomer: 1964,
               x: 1965...1981,
               milenial: 1982...1994,
               z: 1995 }

generaciones.each do |key, value|
  # necesitamos validar si value es un entero para envolver dentro de un array porque el metodo include? no se puede usar sobre un entero
  #  # el include se va a envolver sobre el array y hay si se puede manipular con el metodo include?
  compare = value.is_a?(Integer) ? [value] : value
  # compara contra el valor del hashe hacemos el include
  puts key.to_s if compare.include?(year)
end

# lo que yo tengo incluye tal cosa

# mirar como hacerlo con el include... para encontrar el valor dentro de un array, solo sirve para rangos, string rangos
# select podria usar.


# para saber que tipo es
# puts generacion.size

hash_result = generaciones.select do |key, value|
  compare = value.is_a?(Integer) ? [value] : value
  compare.include?(year)
end
puts "Estas en la generación: #{hash_result.keys[0]}"

