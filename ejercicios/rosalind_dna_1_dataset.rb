# Problem
# A string is simply an ordered collection of symbols selected from some alphabet and formed into a word; the length of a string is the number of symbols that it contains.

# An example of a length 21 DNA string (whose alphabet contains the symbols 'A', 'C', 'G', and 'T') is "ATGCTTCAGAAAGGTCTTACG."

# Given: A DNA string s of length at most 1000 nt.

# Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.


# 1- Guardar el string dado en una variable lamada str
# 2- Crear una variable y guardar mi string convertido en array
# 3- crear  5 variables que me serviran para guardar el incremento de cada una de las letras, inicializadas en cero

# t = 0  #me guardaran un contador, no representa ninguna posicison de mi array el valor 0
# a = 0
# c = 0
# g = 0

# aumento_caracter = "" #sirve para guardar el caracter

# 4- Iterar sobre mi array y cada vez que pase por una posición guardo el valor en una variable
# Ejempĺo: En la iteración 0 voy a guardar el valor "T", en la iteración 1  "T", en iteración 2 "G"
# 5 - pregunto si la variable del paso 4 es igual a una de las variables del paso 3
# 5.1 - incremantar la variable que coincide.
# 5.2 guardar caracter en mi variable aumento_caracter
# Ejemplo en la iteración 0 me aumentaria mi variable t con valor 1, en la itearción 1 aumenta mi variable t y qudaria con el valor 2, y en la segunda iteración 2 aumenta la variable g y quedaria con valor 1
# 6- mostrar el valor final de las variables declaradas en el punto 3 (De la cantidad de veces que paso por elemento)

#1
str ="TTGAAGCTTGAACTTACGAAAATTTACTATGGTTAAGTCCGATCACTTCCTTCGCACGGCGGGTCACCATTAGAAGAGCACGGGGAGTTGAGGGGGAGTGTTACACAGCCAGAAAATTAAAACTCAACTTCTTCCTCCGTAACGAAGCGATAGGCAGACTTATGGCAAGGCTCTCAAGGAAGCTAAGGACCTACCCCTTGCAAAGTGGTTATAAATTGGAGAGTCGGACCCCCGGTCCTAAACTGATTTTTCAAGCCATTACGGAGTAGCAGGCATTTTGCGTGCTCCCGAATTCCAAACTTTGCTAGACGCTAGGGAAGAGTCCGTTATCAGTGAAACGCTTGACTTGACATCCACGCGTTGGGGGGTGCATGGTTGCTGAAGTTCCACATACTTGGGTTAAGGTCCACTGTGGAGGGTGCTGCGTCAGTTACGTCGCATTCTTTATGTATATTCATGCCGTTCCTACACTGCCATTACGATCACCTCAGGCTAAGTGGGACTATTAAAATAACATGTGATCTAAGAGTTGCCCTAATCCCCTCCCACTAGATAGGACTGTTTATTTAGAGGTATTTAGGGGTTAAGTATTTGCTGAAGTCGTCGGCAGCTCTAGGCGTGCGAGTTTCGCAAGGAGCCGACGACAGTCCGACCCACCTCGGAAGAGGCTGACACCGGATCTACTCGAGTTAAAGTACGCCGTCATGTGCTTCAGGACTCCGGTGTTATGCACACCCAGCTTTGGATTAGCTGAGTTAGATTTGGCTATTCGGCAGGCATGGAGATCTTCGACATATTGAATCCATCGTATGCAAGGAGTGTGCCAGGATAGCCGCCACATTTGTCTGGAAAGCATCACCTGTTTTACGCTCGCCCACGATTTGTTTCGCAAGCTACAACCGGGTTTGTTAGTTGCCTGCCTAACGAGCACTAATGGGAAATGCCCACTCAGTCGTACCCACCA"

#2
array  = str.chars

#3
t = 0
a = 0
c = 0
g = 0
aumento_caracter = ""


#4

array.each do |character|
  #5
  case character
  when 'T'
    t += 1
    aumento_caracter = "T"
  when 'C'
    c +=  1
    aumento_caracter = "C"
  when 'G'
    g +=  1
    aumento_caracter = "G"
  when 'A'
    a+=1   
    aumento_caracter = "A"
  else
    puts "Error"
  end
  ## if character == 'T'
  ##   t +=  1
  ## elsif character == 'C'
  ##   c +=  1
  ## elsif character == 'G'
  ##   g +=  1
  ## elsif character == 'A'
  ##   a +=  1
  ## end
  #puts "Hay #{t} T, #{c} C, #{g} G, #{a} A"
  #puts "El caracter que aumento fue: #{aumento_caracter}"
end

puts "Hay #{t} T, #{c} C, #{g} G, #{a} A"






