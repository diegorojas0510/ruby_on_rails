my_string = "Este es un string"
puts my_string[5]
p my_string[5,7]
puts my_string.length

puts "#"*90
str = "hola mundo"

array_chars = str.chars # ["h", "o", "l", "a", " ", "m", "u", "n", "d", "o"]
p array_chars
array_chars.each do |c|
  puts c
end

# vamos a pasar a mayusculas usando la tabla ASCII si es minuscula tengo que restar 32
upcase_array = []
array_chars.each do |c|
    unless c.ord == 32
        ascii_number = c.ord - 32 
        upcase_array.push(ascii_number.chr)
    else
        upcase_array.push(c)
    end
end

p upcase_array
puts upcase_array.join

may = "hola mundo".upcase
min = may.downcase
cap = may.capitalize

p [may, min, cap]