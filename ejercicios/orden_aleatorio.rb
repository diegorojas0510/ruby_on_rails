# Escribe un programa que permita al usuario ingresar una lista de nombres y los mezcle de forma aleatoria.
# El programa deberá preguntar primero cuál es el número de personas que se quiere ingresar.
# Luego le va preguntando por el nombre de cada persona y las va almacenando en un arreglo.
# Al final muestra la lista de personas ordenadas de forma aleatoria.

class Names
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
names = Names.new('Juan')
puts names.name

names2 = Names.new(%w[Pepe Carlos Maria])#convierte a
puts  names2.name.shuffle






