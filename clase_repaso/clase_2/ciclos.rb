i = 0

while i < 10
    puts "Hola"
    i+=1 # i = i + 1
    puts i 
end

5.times do |i| # i es una variable que toma el valor de cada iteracion 0, 1, 2, 3, 4
    puts i # se ejecuta el codigo dentro del bloque
    puts i * 5
    puts i + 25
end

puts "Ejemplo bloque de una linea"
2.times {|cont| puts cont}

n = 50
n.times {|var| puts var}


# (10..15) declara un rango 10,11,12,13,14,15
(10..15).each do |num|
    puts "#{num} Hola mundo"
end
puts "#"*20
# (10...15) declara un rango 10,11,12,13,14
(10...15).each do |num|
    puts "#{num} Hola mundo"
end

(10..15).each {|i| puts "El numero es #{i}"} 