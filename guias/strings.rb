str = 'Hola mundo'
puts str.length

puts str[0]
puts str[1]
puts str[2]
puts str[3]
puts
str = "Hola mundo"

chars = str.chars # ["H", "o", "l", "a", " ", "m", "u", "n", "d", "o"]#chars retorna todos los caracterees de la cadena en un array
chars.each do |c|
  puts c
end

print chars

puts "hola mundo".split("-")

# ¿Cómo puedo obtener la longitud de la cadena "Hola Mundo"? 
# ¿Cómo puedo obtener la tercera posición de la cadena "Hola Mundo"? Debería ser la l.
# ¿Cuál es el método que se utiliza para partir cadenas? ¿Qué retorna ese método?
# ¿Cuál es el método que se utiliza para unir las posiciones de un arreglo? ¿Qué retorna ese método?
# ¿Cuál es el método que se utiliza para reemplazar parte de la cadena por otra?

# usando el length
# [2]
# split y retorna un array
# join y retorna y retorna un string
# gsub remplaza la parte de la cadena recibe dos argumentos el valor a remplazar y el valor que se quiere dejar