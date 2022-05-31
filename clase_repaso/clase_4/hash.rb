products = [
  { id: 1, name: "Leche", price: 120, categories: ["familiar", "comida"] },
  { id: 2, name: "Arroz", price: 80, categories: ["familiar", "comida"] },
  { id: 3, name: "Lavadora", price: 7800, categories: ["electrodomésticos"] }
]

# iterar sobre cada una de las posiciones del array y 
# cuando estemos en la posicion, llamar el key :name sobre ella

products.each do |product|
    puts product[:name]
end

# quiero mostrar un mensaje con lo siguiente
"El producto seleccionado es <nombre>, tiene <numero> categorias y son <categoria1, categoria2, etc>"

products.each do |product|
    puts "El producto seleccionado es #{product[:name]}, tiene #{product[:categories].length} categorias y son #{product[:categories].join(',')}"
end
