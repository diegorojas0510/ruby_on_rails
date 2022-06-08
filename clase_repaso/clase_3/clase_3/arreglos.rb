array = [1, "Pedro", true, false, "Juan"]
p array

puts array[0]
puts array[1]

puts "#" * 50
index = 0
puts array.length

while index < array.length
    puts "index es #{index}"
    puts array[index]
    index += 1
end
puts "#" * 50
puts "Iterando con each"
array.each do |pepe|
    puts pepe
end
puts "#" * 50
cars = ["ford", "mazda", "kia", "chevrolet", "renault"]

# la varaible va dentro de los pipes y tomara el valor de cada posicion
cars.each do |car|
    puts car
end
puts "#" * 50
cars.each {|car| puts car}

puts "#" * 50
["ford", "mazda"].each {|el| puts el}

puts "#" * 50
#cuando se requiere tener el indice se usa eac_with_index y se pasan dos variables
# la que guardara el valor del array y la que guardara el valor del indice
cars.each_with_index do |car, index|
    print "El elemento del indice #{index} es: "
    puts car
end

puts "#" * 50
puts "#" * 50
p array
array[1] = "Germán"
p array

array.push("Hola soy otro campo")
p array
array << "Un nuevo campo"
p array
array.insert(3, "posicion 3") #insertamos en la posicion 3
p array
array.delete_at(3) # borramos la posicion 3
p array
array.pop # borramos la ultima posicion
p array
array.shift # borramos la primera posicion
p array
array.unshift("nuevo")# insertamos la primera posicion
p array
array.delete("nuevo")
p array
array.delete("nuevo")
p array

nums = [58, 96, 47, 21]
p nums
p nums.sort
p nums.take(2) # toma el numero de elementos que le diga
p nums.drop(1) # toma el resto de elementos despues de n elementos que le dije

puts nums.include?(96)
puts nums.include?(105)
p nums
p nums.shuffle