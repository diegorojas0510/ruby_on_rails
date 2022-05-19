function suma(a, b){ // var a = primer_valor, var b = segundo_valor
    //dentro de la funcion uso los parametros como si fueran variables
    console.log(r); // r no esta dentro la funcion, no existe para ella
    return a + b; // con return la funcion devuelve un valor
}

function resta(a, b){ // var a = primer_valor, var b = segundo_valor
    //dentro de la funcion uso los parametros como si fueran variables
    a - b; // sin return la funcion no devuelve un valor
}

var a = 5;
var b = 7;

console.log(suma(a,b));

var r = 6;
var c = 90;
console.log(suma(r,c));

console.log(suma(10, 15));

var pepe = 89;
var carlos = 77;
console.log(suma(pepe, carlos));

console.log(resta(pepe, carlos));


var resultado = suma(r,a);
console.log("resultado es " + resultado);


var array = [1,2,3,4];
var pepe = [1,2,3,4];
console.log(array[3]);// accedo mediante el indice

var objeto = { 
    nombre: "German" // key: value , atributo o propiedad del objeto, diccionario
}

console.log(objeto.nombre);
// objeto y sus atributos y propiedades
var usuario = { 
    nombre: "German",
    edad: 45,
    activo: true,
    fechaIngreso: '18/02/2021'
}

console.log(usuario.nombre); //nombre objeto.propiedad objeto.atributo
console.log(usuario.edad);
console.log(usuario.activo);
console.log(usuario.fechaIngreso);
console.log(usuario["activo"]); // nombre de la propiedad que deseo ver objeto["propiedad"] objeto["atributo"]

var atributo = "fechaIngreso";
console.log(usuario[atributo]); // porque se reemplaza el valor de la variable usuario["fechaIngreso"]

var pepe = "fechaIngreso";
console.log(usuario[pepe]); // porque se reemplaza el valor de la variable usuario["fechaIngreso"]


atributo = "edad";
console.log(usuario[atributo]);// usuario["edad"]

// tambien yo puedo imprimir todo el objeto

console.log(usuario);

usuario.peso = 75;

console.log(usuario);

usuario["altura"] = 1.75;
console.log(usuario);

delete usuario.peso;
console.log(usuario);

delete usuario["altura"];
console.log(usuario);

console.log("#".repeat(20))
// for (var llave in objeto) llave (o como se llame) va a tomar el valor de cada una de las propiedades
for (var atributo in usuario) {
    console.log(`Imprimiendo la propiedad ${atributo}`);

    if (usuario.hasOwnProperty(atributo)) { // usuario.hasOwnProperty(atributo) evalua si el atributo existe en el objeto
      console.log(`Imprimiendo el valor de la propiedad ${usuario[atributo]}`) // primer vez usuario["nombre"]
    }
  }

for (var nicolas in usuario) {
console.log(`Imprimiendo la propiedad ${nicolas}`);

    if (usuario.hasOwnProperty(nicolas)) { // usuario.hasOwnProperty(atributo) evalua si el atributo existe en el objeto
        console.log(`Imprimiendo el valor de la propiedad ${usuario[nicolas]}`) // primer vez usuario["nombre"]
    }
}

for (var diego in usuario) {
    console.log(`Imprimiendo la propiedad ${diego}`);

    console.log(`Imprimiendo el valor de la propiedad ${usuario[diego]}`) // primer vez usuario["nombre"]

}

for (var key in usuario) {
    console.log(`Imprimiendo la propiedad ${key}`);

    console.log(`Imprimiendo el valor de la propiedad ${usuario[key]}`) // primer vez usuario["nombre"]

}

console.log("/".repeat(20))

var llaves = Object.keys(usuario);
console.log(llaves);
for (var i=0; i < llaves.length; i++) {
  var llave = llaves[i]; // llaves[0] --> 'nombre', llaves[1] --> 'edad'
  console.log(usuario[llave]); //usuario['nombre'], usuario['edad]
}

console.log("=".repeat(20))
var person = {
    name: "Pedro",
    sayHi: function() { // cuando en una propiedad hay una funcion, a esto se le llama metodo
      console.log("Hola!");
    }
  }

  console.log(person)

  console.log(person.sayHi()) // para invocar el metodo se hace igual que en una funcion, con los ()

  console.log(person["sayHi"]())

  person.despedida = function(){
      console.log("Adios");
  }

  console.log(person)
  console.log(person.despedida())

  console.log("\n".repeat(3)) //--> \n new line (enter) \r return carrier
  console.log("AQUI")


  var perro = {
      nombre: "firulais",
      raza: "buldog",
      edad: 6,
      ladrar: function(){
          console.log("guau guau")
      }
  }

  console.log(perro.ladrar())

  var estudiante = {
      nombre: "Pedro",
      edad: 17,
      curso: 1101,
      saludoNombre: function(){
          console.log("Mi nombre es " + this.nombre); // this --> este
      },
      hobbies: ["Musica", "Video juegos", "Cine"],
      materia: {
          nombre: "Matematicas",
          profesor: "Ruben Blades"
      }
  }

  estudiante.saludoNombre();

  console.log(estudiante)

  for (var key in estudiante){
      console.log(estudiante[key]);
      if (key == "hobbies"){
          for( let i =0 ; i < estudiante[key].length; i++){
              console.log(estudiante[key][i]);
          }
      }
  }