/**
 * # Agregar Peso
Escribe una función agregarPeso que reciba un objeto (que representa una persona) y un número.


 La función deberá retornar el mismo objeto de entrada pero con una nueva llave peso cuyo valor deberá ser el número que llega por parámetro:

```javascript
agregarPeso({ nombre: "Pedro" }, 40); // en el ejemplo estan invocando la funciona, la estan llamando para se ejecute
// { nombre: "Pedro", peso: 40 }
agregarPeso({ nombre: "Maria" }, 23);
// { nombre: "Maria", peso: 23 }
```
 */



function agregarPeso(objeto, number) { // los parametros son nombres de variables

    objeto.peso = number; // peso es la nueva llave que quiero poner

    return objeto;

}

console.log(agregarPeso({ nombre: "Pedro" }, 40));

var maria = { nombre: "Maria" };
var pesoMaria = 23;

var resultado = agregarPeso(maria, pesoMaria);
console.log(resultado);

/*
function agregarPeso(objeto, number) { //--> var objeto = { nombre: "Pedro" }, var number = 40

    objeto.peso = number; // { nombre: "Pedro", peso: 40 }

    return objeto; { nombre: "Pedro", peso: 40 }

}

*/


pesos = [40, 60, 70];

usuarios = {
    yony: { nombre: "Yony Arley", hobbies: ["Musica"]},
    nicolas: {},
    oscar: {peso: 75, profesion: "Ingeniero"}
}
console.log("*".repeat(20))
// quiero guardar en una variable con el nombre del usuario, un objeto con los datos actuales, mas el peso de acuerdo al array dado usando la funcion creada

// yony = { nombre: "Yony Arley", hobbies: ["Musica"], peso: 40}

var yony = usuarios.yony; // guardamos en yony los datos del objeto usuarios que pertencen a Yony
agregarPeso(yony, pesos[0]) // llamar a la funcion que agrega el peso
console.log(yony)

var nicolas = usuarios.nicolas;// {}
agregarPeso(nicolas, pesos[1]);
console.log(nicolas);

var oscar = agregarPeso(usuarios.oscar, pesos[2]);
console.log(oscar);

// return si me piden devolver algo, si tengo que imprimir uso console.log(del resultado)
// console.log, si me piden imprimir

