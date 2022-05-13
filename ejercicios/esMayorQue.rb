puts "Ingrese un número: "
num = gets.chomp.to_i

if num < 10
 puts "El #{num} es menor a 10"
elsif num > 10
 puts "El #{num} es mayor a 10"
elsif num == 10
   puts "El #{num} es igual a 10"
end
