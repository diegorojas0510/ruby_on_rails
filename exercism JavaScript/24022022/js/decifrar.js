/**
 * # Descifra la Frase
Escribe una función descifrar que reciba un string y un objeto.
Utiliza las propiedades(llaves, atributos) del objeto para reemplazar los caracteres de la cadena y retorna el resultado:
```javascript
descifrar("h0l4", { 0: "o", 4: "a" }); // "hola"
descifrar("pyrmizo", { y: "e", z: "s" }); // "permiso"
descifrar("igual", { h: "n" }); // "igual"
```
 */


function descifrar(string, objeto) {
    var caracteres = string.split('');// "h0l4" --> ["h", "0", "l", "4"]
  
    for(var i = 0; i < caracteres.length; i++) {
      var caracter = caracteres[i]; // i = 1  --> 0
      if(objeto.hasOwnProperty(caracter)) {// i = 1 --> objeto tiene 0 como propiedad?
        caracteres[i] = objeto[caracter]; // caracteres[1] --> 0 asigne ahora objeto[0] --> o => ["h", "o", "l", "4"]
      }
    }
  
    return caracteres.join("");
}

console.log(descifrar("h0l4", { 0: "o", 4: "a" }));
console.log(descifrar("pyrmizo", { y: "e", z: "s" })); // "permiso"
console.log(descifrar("igual", { h: "n" })); // "igual"

console.log("*".repeat(50))
function descifrarHenry(palabra, objeto) {
    
    for (var key in objeto){ // [0, 4] -- ['y', 'z'] -- ['h']
        console.log("Key", key)
        console.log("objeto[key]", objeto[key])
        palabra = palabra.replace(key,objeto[key])// palabra.replace(0,o) - palabra.replace(4,a)
    }

    return palabra
}

console.log(descifrarHenry("h0l4", { 0: "o", 4: "a" })); // "hola"
console.log(descifrarHenry("pyrmizo", { y: "e", z: "s" }))// "permiso"
console.log(descifrarHenry("igual", { h: "n" }))//igual