/**
 * # Generador de Contraseñas
Escribe una función llamada contrasena que reciba un string y retorne otro string realizando los siguientes cambios sobre el string de entrada:


* Las mayúsculas se reemplazan por minúsculas. --> .toLowerCase()
* Se eliminan los espacios en blanco. --> .split(" ").join("")

Iterar por la cadena y preguntar para hacer el cambio
* Reemplaza el caracter "a" por "4".
* Reemplaza el caracter "e" por "3". 
* Reemplaza el caracter "i" por "1".
* Reemplaza el carater "o" por "0".


```javascript
contrasena("hola"); // "h0l4"
contrasena("esta es una prueba"); // "3st43sun4pru3b4"
contrasena(""); // ""
```
*/

function contrasena(string) {// "e  a"
    var clave = "";
  
    for(var i = 0; i < string.length; i++) { // i = 4  4 < 4 --> false
      var caracter = string[i].toLowerCase(); //"e  a"[3].toLowerCase() --> "a"
      if(caracter === " ") {
        caracter = ""; // caracter ahora es ""
      } else if(caracter === "a") {
        caracter = 4;// caracter ahora es 4
      } else if(caracter === "e") {
        caracter = 3;
      } else if(caracter === "i") {
        caracter = 1;
      } else if(caracter === "o") {
        caracter = 0;
      }
  
      clave += caracter // clave =  "" + 3 -- >   "" + "3" --> "3"
                        // clave = "3" + "" --> "3"
                        // clave = "3" + "" --> "3"
                        // clave = "3" + 4 --> "3" + "4" --> "34"
    }
  
    return clave; // "34"
  }

  //console.log(contrasena("hola"));// "h0l4"
  //console.log(contrasena("esta es una prueba")); // "3st43sun4pru3b4"
  //console.log(contrasena(" ")); // ""
  console.log(contrasena("e  a")); // "34"


  function contrasenaYony(string) {// "e  a"
    
    var clave = string.toLowerCase();

    // chain -- cadena encadenar
    clave = clave.split(" ")
    .join("")
    .replace("a", "4")
    .replace("e", "3")
    .replace("i", "1")
    .replace("o", "0");

    return clave;
  }

  console.log(contrasenaYony("e  a"))