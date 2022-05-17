# array = [1, 2, 3, 4, 5, 6, 7, 'Hola', [], 'Diego,', 8, 9, 10]

# array.each_with_index do |element, index|
#   puts "#{index}: #{element}"
# end

# puts

# array.each do |element|
#   puts "Elemento: #{element}"
# end

# array << 'Juan' # Funciona para añadir un nuevo elemento
# array.push('pedro') # funciona igual para añadir nuevo elemento

# print array
# puts
# puts array[-1]
# puts array[-2]
# puts array[-3]
# puts
# puts array.length
# array.push('liliana')
# puts
# print array


# array = [1, 2, 3, 4, 5, 6, 7, 'Hola', [], 'Diego', 8, 9, 10]
# # Eliminando array
# array.delete_at(7)# elimimando por el indice
# print array
# puts
# array.delete("Diego")#eliminando por elemento
# print array
# puts
# array[1..3]#podemos imprimir el valor de cierta posición
# print array
# puts
# array[1..4] = ["sebastian", :carro, :perro, "Hola juan"]#podemos igual esta posición a lo que necesitamos
# print array



array2 = [1, "carro", 4, 6, 7, 8, 9, 10, "Pepe", "carlos"]
#recorremos el array con su elemento
array2.each do |elemento|
  print "#{elemento} /"#imprimimos el elemento
end

array2.each_with_index do |elem, index|
  print "#{index} -  #{elem}" #imprimimos el elemento y la posición
end


array_person = ['Juan', 'Pedro', 'Maria', true, 1, 2, 3, 'Chrome', 'Firefox', 'Safari', 'Opera', 'IE']

puts array_person.at(0) # forma de acceder al indice del array
# puts
# puts array_person.at(1) # forma de acceder al indice del array
# puts
# puts array_person[0] # forma de acceder al indice del array
# puts
# puts array_person.last # forma de acceder al ultimo elemento del array
# puts
# puts array_person.first  # forma de acceder al primer elemento del array
# puts
# print array_person.take(2) # forma de acceder a un rango de elemento del array
# puts
# print array_person.drop(2) # forma de acceder a un rango de elemento del array despues del rango

