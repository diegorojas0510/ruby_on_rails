/*
Selectores CSS
id --> #nombre-id
document.querySelector("#pepe")

clase --> .nombre-clase

*/
// traera el primer elemento que coincida con el selector de css

// traera el primer elemento que coincida con el id pepe
document.querySelector("#pepe")

// traera el primer elemento que coincida con la clase box
document.querySelector(".box")

// traera el primer elemento que coincida con el tag div
document.querySelector("div")

// seleccionar elementos especificos, requiere la ruta de los selectores css, Ej segunda caja
document.querySelector("#pepe .box:nth-child(2)")

// Existen funciones de seleccion especificas
document.getElementById("pepe")

// por definicion, un ID deberia identifcar un unico elemento en el HTML, un elemento no puede tener mas de un ID, mientras que una clase puede identificar mas de un elemento, un elemento podria tener mas de una clase

document.getElementsByClassName("box")

// seleccionar por los tag name

document.getElementsByTagName("p")


// crear elementos y adicionarlos

var item = document.createElement("li") // nombre del tag que quiero crear
item.textContent = "Hola Soy el item" // adicionar texto dentro del li

document.querySelector("#lista").appendChild(item) // adiciono el elemento

//crear lista ordenada, con los nombre de 4 platillos favoritos
/*
<ol>
    <li>Pasta</li>
    <li>Arroz</li>
    <li>Carne</li>
    <li>Huevo</li>
</ol>
 */

// 1 guardar la lista de platillos
var platillos = ["Pasta", "Arroz", "Carne", "Huevo"];

// 2 crear la lista ordenada
// JS se usa la forma camelCase, una palabra "lista", mas de una palabra la inicial de la segunda en adelante va en mayuscula "listaOdenadaPorId"
const listaOrdenada = document.createElement("ol");

// 3 recorrer el array y adicionar los elementos a la lista, es decir, crear un li, colocarle el texto y añadirlo al ol

// forEach es un metodo que se puede llamar sobre los Arrays, y recibe una fucnion que se ejecutara sobre cada uno de los valores
platillos.forEach(function(item){ // itera sobre cada posicion del array como un for, cada vez que pasa guarda el valor en la variable item
    const li = document.createElement("li");
    li.textContent = item;
    listaOrdenada.appendChild(li)
});

document.querySelector("body").appendChild(listaOrdenada)

/* Recorderis de metodos en objetos*/
var persona = {
    name: "Juan",
    hablar: function(saludo){
        console.log("hola " + saludo)
    }
}

persona.hablar("Pedro") // metodo




