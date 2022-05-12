#Escribe un programa para la consola que le pida al usuario ingresar una frase y la imprima nuevamente debajo.
#Por ejemplo, el resultado de ejecutar el programa utilizando la frase "Hola Mundo" sería el siguiente:
#ruby repite.rb
#Escribe una frase: Hola Mundo
#Hola Mundo
print "Ingrese una frase: "
frase = gets.chomp
puts "Tu frase es: #{frase}"