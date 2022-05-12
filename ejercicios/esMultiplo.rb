# Un múltiplo de 5 es aquel que dividio por 5 da por resultado un número entero (sin residuo). Por ejemplo 10, 15, 20, etc. son múltiplos de 5. 13 no es múltiplo de 5 porque quedaría un residuo de 1.
# Escribe un programa que pida un número e imprima si es un múltiplo de 5 o no. Si es múltiplo debe imprimir "Sí, el número x es múltiplo 5", de lo contrario debe imprimir "No, el número x no es múltiplo de 5".

puts "Ingrese un número: "
num = gets.chomp.to_i;

if num % 5 == 0
    puts "El #{num} Si es multiplo de 5"
elsif 
    puts "El #{num} No es multiplo de 5"
end