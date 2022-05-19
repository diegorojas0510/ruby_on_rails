// diferencia entre var vs let

var a = 1;
console.log("a Antes del bloque", a)
{
    var a = 4;
    console.log("a Dentro del bloque", a)
}

console.log("a Despues del bloque", a)


// Let ambito/ scope / alcance de bloque, 
// la variable definida con let vive dentro del bloque 
// donde fue declarada
console.log("********** let *********")
var a = 1; // una variable que tenga ambito global
console.log("a Antes del bloque", a)
{
    let a = 4;
    console.log("a Dentro del bloque", a)
}

console.log("a Despues del bloque", a)

///













