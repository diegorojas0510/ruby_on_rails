#las variables pueden iniciar con $ o _ pero no pueden iniciar con una mayúscula o con números o tener caracteres especiales en su declaración

print"Ingrese su nombre: "
name = gets.chomp
print"Ingrese su apellido: "
$apellido = gets.chomp
puts "Hola #{name} #{$apellido}!"

# Sin usar la variable
puts "El perímetro de un cuadrado de lado 5 es #{5 * 4}"
puts "El área de un cuadrado de lado 5 es #{5 * 5}"

# usando variables
print "Ingrese un número: "
side = gets.chomp.to_i
puts "El perímetro de un cuadrado de lado #{side} es #{side * 4}"
puts "El área de un cuadrado de lado #{side} es #{side* side}"

# la variable vive en la memoria ram hasta que el programa finalice,

