# Generador de contraseña
# Escribe un método llamado `contrasena` que reciba una cadena y devuelva una nueva cadena realizando los siguientes cambios:
# * Las mayúsculas se reemplazan por minúsculas.
# * Se eliminan los espacios en blanco.
# * Se reemplaza la `a` por `4`.
# * Se reemplaza la `e` por `3`.
# * Se reemplaza la `i` por `1`.
# * Se reemplaza la `o` por `0`.
# # escribe tu solución acá
# puts contrasena("hola") # "h0l4"
# puts contrasena("esta es una prueba") # "3st43sun4pru3b4"
# puts contrasena("") # ""
# **Nota:** Esta no es una forma segura de generar contraseñas y no la recomendamos.

# pseudocodigo
# 1-definir un método llamado contraseña
# 2-el método recibe una cadena como argumento
# 3-validar el método que convierte de mayusculas a minusculas
# 4-validar el método en ruby que quita los espacios en blanco
# 5-crear un ciclo para reemplazar las letras de la siguiente manera:
# * Se reemplaza la `a` por `4`.
# * Se reemplaza la `e` por `3`.
# * Se reemplaza la `i` por `1`.
# * Se reemplaza la `o` por `0`.

def pass(password_usr)
  # password_usr.downcase.gsub(/\s+/, '')
  password_usr.each do |character|
    p character.downcase.gsub(/\s+/, '')
    # if character == ""
    #   ""
    # elsif character == "a"
    #   4
    # elsif character == "e"
    #   3
    # elsif character == "i"
    #   1
    # elsif character == "o"
    #   0
    # end
  end

end
p pass('hOlA como estas')