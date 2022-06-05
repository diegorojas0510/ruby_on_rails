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
# 1-definir un método llamado pass
# 2-el método recibe una cadena como argumento
# 3-Convertir la cadena recibida como argumento de mayusculas a minusculas
# 4-Quita los espacios en blanco de mi cadena
# 5-convertir la cadena a un array
# 6-crear un ciclo para reemplazar las letras de la siguiente manera:
# 6.1 Reemplazar los caracteres de la letras por números
# * Se reemplaza la `a` por `4`.
# * Se reemplaza la `e` por `3`.
# * Se reemplaza la `i` por `1`.
# * Se reemplaza la `o` por `0`.
# 7 convertir nuevamente mi array a string y retornarlo

def pass(password_usr)
  pass = password_usr.downcase.gsub(/\s+/, '').chars
  # pass = password_usr.downcase.chars
  #p pass
  pass.each do |character|
    character.replace '4' if character == 'a'
    character.replace '3' if character == 'e'
    character.replace '1' if character == 'i'
    character.replace '0' if character == 'o'
  end
  pass.join('')
  # pass.join('').gsub(/\s+/, '')
end
p pass('hola')
p pass('esta es una prueba')
p "*" * 50

# mirar como hacerlo con la expresión regular

def pass2(password)
  password.downcase.gsub(/[aeio]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => 0).split('').join('').gsub(/\s+/, '')
end
p pass2('hola')
p pass2('esta es una prueba')
p pass2('hola esto es otra prueba')
p pass2('HOLA PRUEBA DE MAYUSCULAS')
