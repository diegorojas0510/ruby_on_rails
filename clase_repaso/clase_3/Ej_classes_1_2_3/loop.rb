index = 0
loop do 
  puts "Estoy dentro de un loop con #{index}"
  index += 1
  break if index == 5
end

edad = 18
puts 'Eres mayor de edad' unless edad < 18
puts edad.include?(17)
