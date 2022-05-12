# Los ciclos nos permiten repetir la ejecución varias veces en ruby existen varias formas de hacer ciclos
50.times do |i|
  puts "Hi! #{i}"
end

puts
# El mismo resultado pero simplificado en una línea
50.times { |i| puts "Hola #{i}" }

#rangos este incluye el ultimo número
(10..20).each do |i|
  puts "#{i} Hola mundo"
end

# rangos este excluye el ultimo digito
(10...20).each { |i| puts"otro #{i}"}