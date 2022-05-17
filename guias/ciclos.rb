# Los ciclos nos permiten repetir la ejecución varias veces en ruby existen varias formas de hacer ciclos
50.times do |i|
  puts "Hi! #{i}"
end

puts
# El mismo resultado pero simplificado en una línea
50.times { |i| puts "Hola #{i}" }

#rangos este incluye el ultimo número
(10..20).each do |i|
  puts "#{i} Hola mundo"
end

# rangos este excluye el ultimo digito
(10...20).each { |i| puts"otro #{i}"}

i = 0
while i < 10
puts "#{i}: Hola mundo"
i+=1
end


#Define un arreglo con los siguientes elementos y almacénalo en una variable llamada arr: "Hola", "Mundo", 3, "veces".
#  Escribe un programa que recorra el arreglo que definiste en el punto anterior y muestre la frase: "El valor en la posición x es y" donde x es la posición (empezando en 0) y y el valor del elemento.
#  ¿Cuáles son las dos formas de insertar un elemento en un arreglo?
#¿Cómo se puede eliminar un elemento de una posición específica del arreglo?
#¿Para qué sirve el método shuffle y cuál es la diferencia entre arr.shuffle y arr.shuffle!?

arr = ['Hola', 'Mundo', 3, 'Veces']

arr.each_with_index do |key, value|
  puts "El valor en la posición #{value}: #{key} "
end

#Forma de insertar elementos en arreglos push, <<
#delete_at
# shuffle sirve para organizar el array aleatoriamente, y shuffle! lo modifica