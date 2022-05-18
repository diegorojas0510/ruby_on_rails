## frozen_string_literal: true
#def generation(year_of_birth)
#  #if year_of_birth >= 1996
#    'Eres un centenial'
#  #elsif year_of_birth >= 1977
#    'Eres un millenial'
#  #elsif year_of_birth >= 1965
#    'Eres generación X'
#  #elsif year_of_birth >= 1946
#    'Eres baby boomer'
#else
#    'Eres tradicionalista'
#end
#end
#
#print '¿Cuál es tu año de nacimiento? '
#year_of_birth = gets.chomp.to_i
#puts generation(year_of_birth)

#Mejorando el programa para usar symbolos
def generation(year_of_birth)

  if year_of_birth >= 2022
    :not_born
  elsif  year_of_birth >= 1996
    :centenial
  elsif year_of_birth >= 1977
    :millenial
  elsif year_of_birth >= 1946
    :baby_boomer
  else
    :traditionalist
  end
end

tranlations = {centenial: "centenial", millenial: "millenial", generation_x: "X", baby_boomer: "baby boomer", traditionalist: "tradicionalista"}
not_born = {not_born: "No has nacido"}

print "¿Cuál es tu año de nacimiento?: "
year_of_birth = gets.chomp.to_i

if year_of_birth == 2022
  generation_code = generation(year_of_birth)
  puts "#{not_born[generation_code]}"
else
  generation_code = generation(year_of_birth)
  puts "Eres de la generación #{tranlations[generation_code]}"
end
