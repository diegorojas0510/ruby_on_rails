# Arreglo a cadena
# Escribe un método llamado `arreglo_a_cadena` que reciba un arreglo y retorne una cadena de texto uniendo todos los
# elementos con espacios.
# ```ruby
## escribe tu solución acá
# puts arreglo_a_cadena(["hola", "mundo"]) # "hola mundo"
# puts arreglo_a_cadena(["Make", "it", "Real"]) # "Make it Real"
# puts arreglo_a_cadena([]) # ""
# **Nota:** Ruby trae un método sobre los arreglos que te permite hacer precisamente esto. Tu reto es encontrar 
# ese método y aplicarlo. Si quieres ir un paso más allá intenta separar la cadena sin utilizar ese método.

# pseudocodigo
# crear un método aue reciba un array
# convertir el array en string con espacios

# El método splat devuelve siempre una lista ordenada(array), no importa la cantidad de elementos que le pasemos como argumento
def array_a_string(*array)
  array.join(" ") # Como lo que devuelve es un array lo convertimos a cadena
  # array.each { |element| puts element.to_s } # recorro la cadena y se convierte a string
end

puts array_a_string("hola", "mundo")
puts "*" * 50
puts array_a_string("Make", "it", "Real") # "Make it Real"


# Si quieres ir un paso más allá intenta separar la cadena sin utilizar ese método.
phrase = %w[hola mundo] # crea un array de cadena de caracteres separadas por espacio para que muestre el array como cadena
phrase.each { |element| puts element.to_s }





