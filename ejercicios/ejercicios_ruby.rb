# 1. Dadas las variables A = 1024 y B = 2048 hallar:
# A+B
# A-B
# (A*(A+B))/B

a = 1024
b = 2048

puts "la Suma es: #{a+b}"
puts "La resta es: #{a-b}"
puts "El resultado es: #{(a*(a+b))/b}"

# 2.Dados los valores de Base: b = 4 y Altura h = 5, implementar la formula del área del triángulo.
b = 4
h = 5
area = (b * h) / 2
puts "El área del triangulo es #{area}"

# 3.Si el perimetro del triángulo del punto 2 es igual a 15 y uno de sus lados equivale a 6, halle la longitud del lado faltante.
perimetro_triangulo = 15
lado = 4
base= 6
puts "la longitud del lado faltante es: #{perimetro_triangulo - (lado + base)}"

# 4.Dado el array A = [ 34, 5, 31, 11, 36, 45],  imprima la suma de todos los elementos.

array = [34, 5, 31, 11, 36, 45]
puts "La suma del array es: #{array.sum}"

# 5.Dado el array del punto 4, imprima el valor mayor
array1 = [34, 5, 31, 11, 36, 45]
puts "El número mayor del array es: #{array1.max}"

# 6.Dado el array del punto 4, imprima los 3 valores máximos
array3 = [34, 5, 31, 11, 36, 45]
puts "Los 3 valores máximos del array son: #{array3.sort.last(3)}"

# 7. Ejercicio Suma:
# Pedir dos numeros con el método "Chomp", buscarlo en google para Ruby y sumarlos, imprimir en consola:
# "Por favor ingrese su primer número" 
# "Por favor ingrese su segundo número"
# "La suma de los dos numeros es XXXX"

print "Ingresa un número: "
num1 = gets.chomp.to_i
print "Ingresa un número: "
num2 = gets.chomp.to_i
puts "La suma de los numeros es:  #{num1+num2}"

# Pedir un número por consola y convertirlo a grados celcius, recordemos que la fórmula para convertir es:
# ...........Búscarla en google, pueden usar el método gets o chomp, desde que se puedan ingresar valores en consola.

print "Ingresa un número: "
num3 = gets.chomp.to_f
puts "Su número es: #{num3} y pasado a grados °F #{(num3 * 1.8 + 32)} y °F a °C #{(num3 - 32)%1.8}"


# Resultados de la consola: 
# symplifica@LAPTOP-6Q2CC5G7:/mnt/c/Users/diego.rojas_symplifi/Desktop/Symplifica/ejerciciosdeRuby$ ruby hallar_dos_numeros.rb 
# la Suma es: 3072
# La resta es: -1024
# El resultado es: 1536
# El área del triangulo es 10
# la longitud del lado faltante es: 5
# La suma del array es: 162
# El número mayor del array es: 45
# Los 3 valores máximos del array son: [34, 36, 45]
# Ingresa un número: 10
# Ingresa un número: 10
# La suma de los numeros es:  20
# Ingresa un número: 32
# Su número es: 32.0 y pasado a grados °F 89.6 y °F a °C 0.0


