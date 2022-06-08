print "Ingresa el número de personas que participarán: "
num = gets.chomp.to_i

people = []
num.times do
  print "Ingresa el nombre de la persona: "
  people << gets.chomp # insertamos cada persona en el arreglo
end

puts "La persona seleccionada es #{people.sample}"