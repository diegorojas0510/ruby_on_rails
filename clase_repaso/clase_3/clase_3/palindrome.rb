=begin
programa que solicite una cadena y diga si la cadena es palindrome
los espacios no importan

"Anita lava la tina" --> es palindrome
"oso" --> es palindrome
"Dabale arroz a la zorra el abad" 

Pseudocodigo

1- Solicitar una frase al usuario (sin signos de puntuacion ni tildes) y guardarla
2- Poner todo en minuscula o en mayuscula (guardar el cambio)
3- Quitarle los espacios a la cadena (guardar el cambio)
4- comprobar si la cadena es igual a la cadena inversa
    opciones:
        - convertir la cadena en un array 
        - crear un array vacio para guardar la cadena al reves
        - recorrer el array original de derecha a izquierda y guardarlo en la variable anterior 
        - finalmente recorrer el array original con un indice,
        y validar posicion a posicion si los valores son iguales
        - si termina la iteracion correctamente, es palindrome
        - sino, no es palindrome
=end

print "Ingrese una frase (sin signos de puntuacion, ni tildes):"
phrase = gets.chomp
phrase_downcase = phrase.downcase
phrase_without_spaces = phrase_downcase.delete(' ')

p = phrase_without_spaces

phrase_inverse = []
len = p.length

[1,2,3] # longitud es 3, posiciones 0, 1, 2 (indice represente la posicion)
index = len - 1
while index >= 0
    phrase_inverse << p[index]
    index -= 1
end

flag = true
p.chars.each_with_index do |char, index|
    flag = char ==  phrase_inverse[index]
end
puts flag

# con Ruby, utilizamos los metodos que tenemos a la mano en las clase String

puts "Con ruby "
puts phrase_without_spaces == phrase_without_spaces.reverse