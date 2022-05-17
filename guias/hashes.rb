person1 = {name: "Diego",  surname: "Escobar", age: 34,  heigth: 1.8, car_brand: "mazda"}

person2 = {"name" => "Diego",  "surname"=> "Escobar", "age" => 34,  "heigth"=> 1.8}

# accediendo a la llave
puts person1[:name]

# añadiendo nuevos elementos
person1[:carro] = "Ford"
puts person1

# modificando elementos
person1[:carro] = "mazda"
puts person1

# eliminando elementos usando symbolos en el hash
person1.delete(:age)
puts person1

# con hash rocket  se puede eliminar la llave de esta manera
person2.delete("name")
puts person2

# Recorriendo elemento del hash
person1.each do | key, value|
  puts "#{key}: #{value}"
end

puts person1.length
puts person2.length

puts person1.has_key?(:surname)
puts person2.has_key?("age")
puts person1.has_key?(:marca)
puts person2.has_key?(:high)
puts
print "keys person1: #{person1.keys}"
puts
print "keys person2: #{person2.keys}"
puts
# retornando values del hash
puts "Values: #{person1.values}"
puts "-" * 20
puts "Values #{person2.values}"
puts "/" * 20
# Eliminar el hash
puts "Vacio: #{person1.clear}"
puts "*" * 20
puts person2
puts "-" * 20
# mes clando arreglos y hashes
products = [
  { id: 1, name: "Leche", price: 120, categories: ["familiar", "comida"] },
  { id: 2, name: "Arroz", price: 80, categories: ["familiar", "comida"] },
  { id: 3, name: "Lavadora", price: 7800, categories: ["electrodomésticos"] }
]

products.each do |product|
  puts product[:name]
  puts" Id: #{product[:id]}"
  puts" Precio: #{product[:price]}"
  puts" Categorias: #{product[:categories]}"
  puts "-" * 20
end

# Define un hash a partir de la siguiente tabla y almacénalo en una variable car:
# | Llave    | Valor     |
# | :brand   | "Renault" |
# | :year    | 2008      |
# | :price   | 12000     |
# | :color   | :negro    |
# | :sunroof | true      |
#  ¿Cómo podríamos obtener el valor de la llave :color?
# ¿Cómo podemos insertar la llave :plates con el valor "ABC123"?
# ¿Cómo podemos modificar el valor de la llave :year por 2007?
# como podemos eliminar la llave :sunroof?
# Escribe un programa que imprima todas las llaves del hash almacenado en car con su respectivo valor.

car = {brand: "Renault", year: 2008, price: 12000, color: "Black", sunrrof: true}

puts car[:color]
car[:plates] = "ABC123"
puts car[:plates]
car.delete(:sunrrof)
puts car

car.each_with_index do |key, value|
  puts "#{value}: #{key} "
end
