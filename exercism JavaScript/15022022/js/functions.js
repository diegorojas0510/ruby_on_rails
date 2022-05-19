
//definicion de la funcion, sin parametros
function hello() {
  // cuerpo de la funcion, va el codigo que se debe ejecutar
  console.log("Hola Mundo");
}
// invocar la funcion, es decirle que se ejecute
hello(); // sin parametros



// Definir (declarar) una funcion con parametros, es decir que reciba datos para porcesarlos
function saludar(name){// el parametro sera el nombre de una variable que yo quiero usar dentro de mi funcion
  console.log("Hola " + name);
}

// invocar la funcion  con parametros, se envia el valor que debe tomar el parametro
saludar("Yony")

// funciones que solamente ejecutan un codigo, pero no retornan un valor o resultado
function guardar(algo){
  var nuevo = algo;
}

guardar("algo")


function suma(a, b){
  return (a + b); // retorna el valor de la operacion
}

var resultado = suma(5,7);
console.log(resultado);


function operaciones(a, b){
  var res = a + b;
  res = b * res;
  res = res + 1540;
  var nombre = "Yony";
  return res; // retorna el valor de la operacion y termina la funcion
  console.log(nombre);
}

var resultado = operaciones(5,7);
console.log(resultado);
