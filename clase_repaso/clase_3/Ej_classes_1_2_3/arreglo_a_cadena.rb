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

def arreglo_a_cadena(array = [])
  @array = array 
end

puts arreglo_a_cadena(['Hola', 'Diego', 'Como estas']).join(' ') # Hola Diego Como estas
puts arreglo_a_cadena(%w[hola mundo]) # "hola mundo"
puts arreglo_a_cadena(%w[Make it Real]) # "Make it Real"
puts arreglo_a_cadena([]) # ""

