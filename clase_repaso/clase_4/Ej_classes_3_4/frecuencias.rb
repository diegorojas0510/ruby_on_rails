# Frecuencias
# Escribe un método llamado `frecuencia` que reciba una cadena de texto y retorne un hash con el número de veces
# que aparece cada caracter (exceptuando el espacio en blanco).
# # escribe tu solución acá
# puts frecuencia("hola mundo")
# # {"h"=>1, "o"=>2, "l"=>1, "a"=>1, "m"=>1, "u"=>1, "n"=>1, "d"=>1]
# puts frecuencia("anita lava la tina")
# # {"a"=>6, "n"=>2, "i"=>2, "t"=>2, "l"=>2, "v"=>1}olución](solutions/frecuencias.rb)

# pseudocodigo
# 1- definir un método llamado frequency
# 2- pasar como argumentos un string que se le enviara una frase
# 3- pasar el string a un array
# 4- crear un hash vacio para almacenar lo que llegue de la iteración del array
# 5- crear un metodo que itere por cada elemento del array
# 6- crear una condición que evalue si el elemento se encuentra en mi array
# 5- contar el núemro de veces que la letra se repite dentro del array una letra
# 6- retornar un hash

# Forma larga
def frequency1(phrase)
  phrase = phrase.gsub(/\s+/, '').chars
  # p phrase
  hash = {}
  phrase.each do |element|
    # print element
    if hash[element] # evalua si el elemento ya se encuentra dentro de la array
      # p "contando #{element}-#{hash[element] += 1}" # si el elemento existe le agrega 1
      hash[element] += 1
    else
      # "agregando nuevo contador #{hash[element] = 1}" # si elemento no existe dentro del array le agrega un valor inicial a 1
      hash[element] = 1
    end
  end
  # "Contador del hash #{hash}" # retorna el contador
  hash
end

# forma corta
def frequency2(phrase)
  phrase = phrase.gsub(/\s+/, '').chars
  phrase.each_with_object(Hash.new(0)) do |item, hash|
    hash[item] += 1
  end
end

# forma más corta
def frequency3(phrase)
  phrase = phrase.gsub(/\s+/, '').chars
  phrase.inject(Hash.new(0)) { |element,position | element[position] += 1; element }
end



p frequency1('hola mundo')
p frequency2('anita lava la tina')
p frequency3('anita lava la tina')
p frequency1('anita lava la tina pqrss')
