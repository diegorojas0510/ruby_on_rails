print "Por favor digite su nombre: " # print es imprimir, sin salto de linea
# input es una variable
input = gets # obtiene lo que digite el usuario desde la consola, y lo guarda en la variable
print "Por favor digite su nombre: "
# new_input es otra variable
new_input = "Yony\n".chomp # quita el \n al final de la cadena
p input # p ayuda a inspeccionar el objeto, nos da mas informacion
p new_input

# Calcula la edad con base en el año de nacimiento y año actual

# 1 - Solicitar al usuario el año de nacimiento y guardarlo en una variable
print "Ingrese año de nacimiento: "
birth_year = gets.chomp.to_i # lo cambiamos a integer para mas tarde poder hacer la operacion
# 2 - Solicitar al usuario el año actual y guardarlo en una variable
print "Ingrese año actual: "
current_year = gets.chomp.to_i
# 3 - Guardar en una variable el resultado de restar el año actual entre el año de nacimiento
age = current_year - birth_year
# 4 - Imprimir el resultado
puts "Mi edad es: #{age}"

puts " El resultado de la expresion booleana (true && true) || !false es : #{(true && true) || !false}"