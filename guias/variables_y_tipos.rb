# no es necesario poner el tipo de dato en las variables

hellow = 'Hello World: ' # variable de tipo string
int_var = 2 # variable de tipo entero
boolean_var = false # Variable de tipo boolean que devuelve true o false
array_var = [] # variable de tipo array
hash_var = {} # variable de tipo hash que en python es diccionario y en js es un objeto
symbol_var = :created # son como un tipo de constantes o como string
nil_var = nil

# Errores no se puede mesclar string con enteros

# !el to_s, o el to_i son metodos que llamamos sobre números o booleanos
puts hellow + int_var.to_s

print 'Ingresa tu nombre: '
name = gets.chomp
puts "Hola #{name}"
