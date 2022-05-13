# Escribe un programa para la consola que le pida al usuario ingresar una frase y un número. El programa deberá imprimir la frase el número de veces que ingresó el usuario. Por ejemplo:

print 'Ingrese un frase: '
phrase = gets.chomp
print 'Ingrese un numero: '
num = gets.chomp.to_i
i = 0
while i < num
  puts phrase
  i += 1
end

puts
# tambien posible
num.times { puts phrase }
