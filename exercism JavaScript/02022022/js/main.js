/*
# Indice de Masa Corporal

El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.
El BMI se calcula con la siguiente formula:
`peso / altura^2`

El programa deberá calcular el BMI e imprimir:

El valor del BMI seguido de " estas " y :

ej: 24.879787 estas Normal


* "Bajo de peso" si el BMI < 18.5 
* "Normal" si está entre 18.5 y 24.9, BMI >= 18.5 && BMI <= 24.9
* "Sobrepeso" si está entre 25 y 29.9,  BMI >= 25 && BMI <= 29.9
* "Obeso" si es igual o mayor a 30,  BMI >= 30

*/
/* PSEUDOCODIGO

1- Pedir los datos de peso y altura al usuario
2- Guardar los datos en unas variables 
3- Calcular el BMI con la formula (peso / altura**2)
4- Evaluar las condiciones, e imprimir segun el caso

* "valor_bmi estas Bajo de peso" si el BMI < 18.5 
* "valor_bmi estas Normal" si está entre 18.5 y 24.9, BMI >= 18.5 && BMI <= 24.9
* "valor_bmi estas Sobrepeso" si está entre 25 y 29.9,  BMI >= 25 && BMI <= 29.9
* "valor_bmi estas Obeso" si es igual o mayor a 30,  BMI >= 30


/////// refactoring, darle mejor orden y optimizar el codigo, evitar redundancias
1- Pedir los datos de peso y altura al usuario
2- Guardar los datos en unas variables 
3- Calcular el BMI con la formula (peso / altura**2)
4- crear una variable llamada mensaje para guardar el mensaje resultado de la condicion
5- Evaluar las condiciones, y hacer

* mensaje = "Bajo de peso" si el BMI < 18.5 
* mensaje = "Normal" si está entre 18.5 y 24.9, BMI >= 18.5 && BMI <= 24.9
* mensaje = "Sobrepeso" si está entre 25 y 29.9,  BMI >= 25 && BMI <= 29.9
* mensaje = "Obeso" si es igual o mayor a 30,  BMI >= 30

6- imprimir  valor_bmi + estas + mensaje
*/

/*
// Javscript  sin refactorizar
var peso = prompt("Por favor ingresa el peso en Kg");
var altura = prompt("Por favor ingresa la altura en metros");
var bmi = peso / Math.pow(altura, 2); // if you don't know, just google it

if (bmi < 18.5){
    document.write(bmi + " estas Bajo de peso"); // Escribe en el documento HTML
    console.log(bmi + " estas Bajo de peso"); // Escribe en la consola
} else if (bmi >= 18.5 && bmi <= 24.9){
    document.write(bmi + " estas Normal"); // Escribe en el documento HTML
    console.log(bmi + " estas Normal"); // Escribe en la consola
} else if (bmi >= 25 && bmi <= 29.9){
    document.write(bmi + " estas Sobrepeso"); // Escribe en el documento HTML
    console.log(bmi + " estas Sobrepeso"); // Escribe en la consola
} else if (bmi >= 30){
    document.write(bmi + " estas Obeso"); // Escribe en el documento HTML
    console.log(bmi + " estas Obeso"); // Escribe en la consola
}
*/

// Javscript  refactorizado
var peso = prompt("Por favor ingresa el peso en Kg");
var altura = prompt("Por favor ingresa la altura en metros");
var bmi = peso / Math.pow(altura, 2); // if you don't know, just google it
var mensaje;

if (bmi < 18.5){
    mensaje = "Bajo de peso";
} else if (bmi >= 18.5 && bmi <= 24.9){
    mensaje = "Normal";
} else if (bmi >= 25 && bmi <= 29.9){
    mensaje = "Sobrepeso";
} else if (bmi >= 30){
    mensaje = "Obeso";
}

document.write(bmi + " estas " + mensaje);

/*

ejemplos Rangos, siempre que se vean las palabras "entre" y "y", quiere decir que hay un rango
  
  (0, 5] --> 1, 2, 3, 4, 5 --> num > 0 && num <= 5
  [1, 6) --> 1, 2, 3, 4, 5 --> num >= 1 && num < 6
  (0, 6) --> 1, 2, 3, 4, 5 --> num > 0 && num < 6
  [1, 5] --> 1, 2, 3, 4, 5 --> num>= 1 && num <= 5

El salario no puede ser mayor al salario_minimo, para cobrar el impuesto:

si (salario < salario_minimo)
    hago algo
sino
    chao

El salario debe ser al menos el salario minimo, para cobrar el impuesto

si (salario <= salario_minimo)
    hago algo
sino
    chao
*/