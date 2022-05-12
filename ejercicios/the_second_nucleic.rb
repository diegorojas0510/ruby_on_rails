# // # Problem
# // # An RNA string is a string formed from the alphabet containing 'A', 'C', 'G', and 'U'.

# // # Given a DNA string t corresponding to a coding strand, its transcribed RNA string u is formed by replacing all occurrences of 'T' in t with 'U' in u.

# // # Given: A DNA string t having length at most 1000 nt.

# // # Return: The transcribed RNA string of t.

# // # GAUGGAACUUGACUACGUAAAUU
# // # Sample Dataset
# // # GATGGAACTTGACTACGTAAATT
# // # Sample Output

# #Funcion en javaScript
# function descifrar(string, objeto) {//Declaramos una función que recibe dos parametros string y objeto
#     var caracteres = string.split('');//declaramos la variable que recibe el string y me la separa
  
#     for(var i = 0; i < caracteres.length; i++) {//ciclo for para recorrer el string

#       var caracter = caracteres[i]; //guardamos lo que tiene caracteres en la posición i en la variable caracter
      
#       if(objeto.hasOwnProperty(caracter)) {//condional para acceder a la propiedad 
#         caracteres[i] = objeto[caracter]; 
#       }
#     }
  
#     return caracteres.join("");
# }
# # console.log(descifrar("GATGGAACTTGACTACGTAAATT", { T: "U"}));


# 1- definir una variable
# 2- guardar un string en la variable 
# 3- convertir el string en un array
# 4- recorrer el array
# 4- guardar el valor de mi elemento en una variable
# 6- crear una condición que me diga si la letra de mi elemneto es igual a T entonces me la cambie por la letra U
# 7 -cambiar el arreglo a string cuando termine de hacer el reemplazo de las letras
# 8- imprimir mi string unido
# 9- imprimir finalmente mi string separado por cualquier caracter 

str  = "GATGGAACTTGACTACGTAAATT" #paso 1 paso 2
chars = str.chars #paso 3

chars.each_with_index do |c, i|# paso 4 y 5
 #puts c , i
    if c == "T"#paso 6
        chars[i] = "U"
    end    
end
puts chars.join("")#7
puts chars.join("-")#8







