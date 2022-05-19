var str = "Hola Mundo";

for (var i = 0; i < str.length; i ++) {
  console.log(str[i]);
}

var cadenaSplit = "prueba,separar,cadenas"
console.log(cadenaSplit.split(","));


var arrayJoin = ["Ana", "lava", "la", "tina"];

console.log(arrayJoin.join(" "));
console.log(arrayJoin.join("-"));
console.log(arrayJoin.join(","));

//csv --> comma separated values


"Hola Mundo".toLowerCase().startsWith("hola")
"Bienvenido!".substring(4, 6);

"Hola Mundo".substring(0, 3)
//'Hol'

"Hola Mundo".replace("Mundo", "Germán")
"Hola Mundo".includes("Hola");
