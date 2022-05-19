var persona = {
    nombre: "Oscar",
    hobbies: ["Musica", "Baloncesto"],
    perro: "kira"
}

// var persona2 = {
//     nombre: "Gerson",
//     hobbies: ["Ingles", "Videojuegos"]
// }

// var h1 = document.querySelector("h1");
// h1.textContent = persona.nombre;

// var ul = document.querySelector("ul");

// persona.hobbies.forEach(function(hobbie){
//     const li = document.createElement("li");
//     li.textContent = hobbie;
//     ul.appendChild(li);
// })


// h1 = document.querySelector("h1");
// h1.textContent = persona2.nombre;


// persona2.hobbies.forEach(function(hobbie){
//     const li = document.createElement("li");
//     li.textContent = hobbie;
//     ul.appendChild(li);
// })


// function that receives a object person with attributes x y z
// and returns hhhhh
function mostrarPersona(persona){
    const h1 = document.createElement("h1");
    h1.textContent = persona.nombre;

    // const h2 = document.createElement("h2");
    // h2.textContent = persona.perro;
    
    // const ul = document.createElement("ul");
    
    // persona.hobbies.forEach(function(hobbie){
    //     const li = document.createElement("li");
    //     li.textContent = hobbie;
    //     ul.appendChild(li);
    // })

    const body = document.querySelector("body")
    body.appendChild(h1);
    // body.appendChild(h2);
    // body.appendChild(ul);
}

// function mostrarPersonas(personas){
//     personas.forEach(function(amigo){
//         mostrarPersona(amigo);
//     })
// }

mostrarPersona(persona);

// mostrarPersonas([persona, persona2]);