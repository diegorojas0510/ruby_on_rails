# Escribe un programa para la línea de comandos que le permita a un usuario ingresar una lista de nombres y después los imprima mostrando la posición en la que se encuentran.
# Lo primero que debe pedir el programa es el número de personas que se quieren ingresar. Luego pregunta por el nombre de cada persona y las va almacenando en un arreglo. Al final, por cada persona ingresada, imprime la frase "El nombre en la posición x es y" (p.e. "El nombre en la posición 0 es Pedro").
print 'Escribe el el número de personas a ingrsar: '
num = gets.chomp.to_i
array_person = []
num.times do |i|
  print " Ingrese el nombre de la persona: #{i + 1}: "
  array_person << gets.chomp
end
puts "La Persona seleccionada es:  #{array_person.sample}"
puts
array_person.each_with_index do |name, i|
  puts "El nombre en la posición: #{i} es: #{name}"
end
puts
puts array_person.at(0) # forma de acceder al indice del array
puts
puts array_person.at(1) # forma de acceder al indice del array
puts
puts array_person[0] # forma de acceder al indice del array
puts
puts array_person.last # forma de acceder al ultimo elemento del array
puts
puts array_person.first  # forma de acceder al primer elemento del array
puts
print array_person.take(2) # forma de acceder a un rango de elemento del array
puts
print array_person.drop(2) # forma de acceder a un rango de elemento del array despues del rango
