/**
 * # La Abuela Sorda
 * 
Escribe una función llamada abuela que reciba un string (una cadena de texto).

Si el string está todo en mayúsculas 
    la función debe retornar la frase "Ahh si, manzanas!". 

De lo contrario, 
    deberá retornar la frase "Habla más duro mijito".

Por último, si el string es vacío (o son sólo espacios)
    debe retornar la frase "Dices algo?".


```javascript
abuela("hola"); // "Habla más duro mijito"
abuela("HOLA"); // "Ahh si, manzanas!"
abuela(""); // "Dices algo?"
abuela("    "); // "Dices algo?" 
```
 */

function abuela(frase){

    if (frase.trim() === ""){
        return "Dices algo?";
    } else if (frase === frase.toUpperCase()){/// es que sea Mayuscula
        return "Ahh si, manzanas!";
    } else {
        return "Habla más duro mijito";
    }
}
var resultado;
resultado = abuela("hola"); // "Habla más duro mijito"
console.log(resultado);
resultado = abuela("HOLA"); // "Ahh si, manzanas!"
console.log(resultado);
resultado = abuela(""); // "Dices algo?"
console.log(resultado);
resultado = abuela("    "); // "Dices algo?"
console.log(resultado);