#El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.
# El BMI se calcula con la siguiente formula:
# peso / altura^2
# Escribe un programa que le pida al usuario su peso y altura. El programa deberá calcular el BMI e imprimir:
# Bajo de peso" si el BMI < 18.5
# "Normal" si está entre 18.5 y 24.9
# "Sobrepeso" si está entre 25 y 29.9
# "Obeso" si es igual o mayor a 30
# Por ejemplo:
# $ ruby bmi2.rb
# Ingresa tu peso: 65
# Ingresa tu altura: 1.8
# Normal
# Ingresa tu peso: 65
# Ingresa tu altura: 1.6
#Sobrepeso

print "Ingresa tu peso: "
peso = gets.chomp.to_i

print "Ingresa tu altura: "
altura = gets.chomp.to_f

bmi = peso / altura**2

puts
if bmi < 18.5
  puts "Tu BMI #{bmi} es  Bajo de peso"
elsif bmi < 25
  puts "Tu BMI #{bmi} es Normal"
elsif bmi < 30
  puts "Tu BMI #{bmi} es  Sobrepeso"
else
  puts "Tu BMI #{bmi} es  Obeso"
end
