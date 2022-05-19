var button = document.querySelector("#saludar");
// .addEventListener(evento, funcion a ejecutar "callback")
button.addEventListener("click", function() {
    alert("Hello");
  });


var ps = document.querySelectorAll("p");
// ps es un array con los 4 p que se seleccionaron
ps.forEach(function(p) {
    p.addEventListener("click", function() {
        p.classList.add("text-red");
    });
});


// document.addEventListener('mousemove', function(e) {
//     console.log(e);
//     console.log("Hola")
//     console.log("El mouse se encuentra en las coordenadas:" + e.pageX + ", " + e.pageY);
//   });

document.querySelector(".box1").addEventListener("mouseenter", function(e){
    e.target.classList.add("grow");
})

document.querySelector(".box1").addEventListener("mouseleave", function(e){
    e.target.classList.remove("grow");
})

document.querySelector(".box2").addEventListener("mouseleave", function(e){
    e.target.classList.add("grow");
})

document.querySelector(".box2").addEventListener("mouseenter", function(e){
    e.target.classList.remove("grow");
})

document.querySelector(".box3").addEventListener("mouseover", function(e){
    // e es el evento escuchado, generalmente se nombra e o event o evt
    e.target.classList.toggle("box-color");
})

// eventos de teclado
/*
document.addEventListener('keyup', function(pepe) {
    // pepe es el evento escuchado
    console.log(pepe);
    console.log("La tecla oprimida fue " + pepe.which + " que representa " + pepe.key);
});

document.addEventListener('keydown', function(lucho) {
    // lucho es el evento escuchado
    console.log(lucho);
    console.log("La tecla oprimida fue " + lucho.which + " que representa " + lucho.key);
    //alert("Estas escribiendo?...")
});
*/
document.getElementById("exampleInputEmail1").addEventListener("blur", function(e){
    // cuando se pierde el foco del elemento 
    let element = e.target;
    console.log(element.value);
})

document.getElementById("exampleCheck1").addEventListener("change", function(e){
    // cuando se hace un cambio sobre el elemento
    let element = e.target;
    console.log(element.checked);
    if (element.checked === true){
        console.log("recordaremos tu usuario")
    }
})

document.getElementById("exampleInputEmail1").addEventListener("focus", function(e){
    // cuando se pone el foco en el elemento 
    let element = e.target;
    element.placeholder = "Ingresa tu email por favor..."; // placeholder es un atributo de los campos de un formulario que permite colocar un texto incial al campo
})

document.getElementById("exampleInputEmail1").addEventListener("blur", function(e){
    let element = e.target;
    element.placeholder = ""; 
})

document.getElementById("form").addEventListener("submit", function(e){
    e.preventDefault();
    console.log("Si hago submit")
})