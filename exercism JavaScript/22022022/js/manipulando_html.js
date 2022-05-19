//<input id="username" type="text" class=" form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">

// document.querySelector trae el primer elemento que coincida con el selector, ID o una clase 

// ID --> identificar un solo elemento en el DOM
// clase --> CSS, ademas, sirve para identificar un conjunto, uno o mas
// Tag - nombre de la etiqueta HTML


var por_id = document.querySelector("#username"); // identificador usando la nomenclatura de CSS 
console.log("ID", por_id);

var por_clase = document.querySelector(".user"); // identificador usando la nomenclatura de CSS
console.log("CLASS", por_clase);

var por_tag_html = document.querySelector("input"); // identificador usando la nomenclatura de CSS
console.log("TAG", por_tag_html);


// querySelectorAll, siempre que necesiten traerse muchos elementos que tengan un selector css determinado

var inputs = document.querySelectorAll("input"); // obtengo un array
console.log("inputs", inputs)

for(let i = 0; i < inputs.length; i++){ // recorro el array
    console.log(inputs[i]);
}

var enlace = document.querySelectorAll("#enlace");
console.log(enlace)
console.log(enlace[0])

// Insertar en el DOM
var anchor = document.createElement("a");// etiqueta HTML
anchor.href = "www.google.com"
anchor.innerText = "Este es un enlace";

var div = document.querySelector("#mydiv");
div.appendChild(anchor);


var p = document.createElement("p");
var p1 = document.createElement("p");
var p2 = document.createElement("p");

// con createTextNode
var text = document.createTextNode("Esto es con TextNode");
p.appendChild(text);

var body = document.querySelector("body");
body.appendChild(p);

// con innerHTML, pudo agregar texto e incluir etiquetas HTML
p1.innerHTML = "<strong>Esto</strong> es con innerHTML";
body.appendChild(p1);

// con textContent
p2.textContent = "Esto es con textContent";
body.appendChild(p2);



var mydiv_a_eliminar = document.querySelector("#mydiv_a_eliminar");


console.log("AQUI")
console.log(mydiv_a_eliminar)
console.log(mydiv_a_eliminar.parentNode)

// mydiv_a_eliminar.parentNode, con parentNode me ubico en el papa del elemento, nodo que lo contiene
mydiv_a_eliminar.parentNode.removeChild(mydiv_a_eliminar) 

// adicionar classes

var box1 = document.querySelector("#box1");
box1.classList.add("green")

var box2 = document.querySelector("#box2");
box2.classList.add("yellow")

var box3 = document.querySelector("#box3");
box3.classList.add("black")


box2.classList.remove("yellow")

box2.classList.toggle("yellow") // si no tiene la clase, se la pone
box2.classList.toggle("yellow") // si tiene la clase, se la quita




