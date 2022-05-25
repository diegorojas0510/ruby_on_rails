def hola_gente(*personas)
  personas.each { |persona| puts "Hola #{persona}"}
end
hola_gente("Juan")

# el metodo splat convierte  lo que le pasemo por argumento en un array no importa la cantidad su notación es *al argumento