#Que es una clase es un molde el cual vamos a utilizar para crear algo
# siempre debe su nombre iniciar con mayuscula
# TODO Clase vacia que representa a una persona
class Person
  def initialize(name)#método contructor
    @name = name #este metodo solo se puede acceder desde la instancia
  end
  def whats_your_name
    @name
  end
  def eat
    puts "I'm eating"
  end
end

person = Person.new("Pepe")
puts person.whats_your_name


