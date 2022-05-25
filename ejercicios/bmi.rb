#El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.
##El BMI se calcula con la siguiente formula:
#peso / altura^2
#Escribe un programa que le pida al usuario su peso y su altura para calcular su BMI. Por ejemplo:
##$ ruby bmi.rb
#Ingresa tu peso: 65
#Ingresa tu altura: 1.8
##Tu BMI es 20.061728395061728
#Como bono intenta redondear el número a un decimal.



print"Ingresa tu peso: "
peso = gets.chomp.to_i

print "Ingresa la altura: "
altura = gets.chomp.to_f

bmi = peso / altura**2

puts "Tu BMI es: #{bmi}"
puts "Tu BMI redondeado es: #{bmi.round(1)}"