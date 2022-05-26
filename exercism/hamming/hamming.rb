=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming # Definimos una clase
  def self.compute(strand_one, strand_two) # definimos un método con dos argumentos
    strand_one_length = strand_one.length # declaramos una variable y la asignamos a lo que hay en la longitud del primer argumento
    if strand_two.length != strand_one_length # si s_Two en su longitud es diferente a la variable que definimos arriba
      raise ArgumentError, "la cadena debe tener la misma longitud" # captura el error si las cadenas no son las mismas
    end

    strand_one_length.times.count { |i| strand_one[i] != strand_two[i] }# iteramos con la longitud del primer array
    #y comparamos si el indice de one es diferente de two me los cuente
  end
end

#https://ruby-doc.org/core-2.5.0/ArgumentError.html