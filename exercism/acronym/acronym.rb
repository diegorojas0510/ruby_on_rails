=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
#class Acronym
#  #def self.abbreviate(phrase)
#    phrase.gsub(/[aeiourtblwkphcs ]/, "").strip #Portable Network Graphics
#  #end
#end

class Acronym
  def self.abbreviate(string)
    string.scan(/(\b\w)/).join.upcase #scan devuelve un array con string vacios de acuerdo a la longitud de la cadena,  Se aprende de las expresiones regulares las cuales \b Coincide con los limites de las palabras cuando están fuera de los {},/\w/ - Un carácter de palabra ( [a-zA-Z0-9_] )
  end
end