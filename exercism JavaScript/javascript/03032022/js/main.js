/*
1- cree un objeto que lo represente a usted cómo persona, 
 // var persona = {}

2 - debe tener los siguientes atributos:
    nombres, apellidos, edad, profesión, descripción, hobbies, música favorita,

3 - el objeto debe ser capaz de escribir por consola el nombre completo,

4 - saludar dándole un nombre, // Hola <nombre>

5 - mostrar en el documento HTML una lista ordenada con los hobbies,

6 - calcular el año de nacimiento a partir del año actual,
        2022 - edad = anio nacimiento

7 - debe poder presentarse mostrando en el HTML  un título con el nombre completo y en un párrafo la edad profesión y la descripción
*/

var persona = {
    nombre: "Diego",
    apellido: "Rojas",
    edad: 35,
    profesion: "Desarrollador de Software",
    descripcion: "Analista y desarrollador de software",
    hobbies: ["Music", "Futbol", "Peliculas"],
    musicaFav: ["Regue", "Salsa", "Rock"],
    nombreCompleto: function(){
        console.log(`${this.nombre} ${this.apellido}`);// ES6 --> interpolar, permite concatenar codigo JS con strings
        //console.log(this.nombre + " " + this.apellido);
        
    },
    saludar: function(nombre, apellido, persona){
        console.log("Hola " + nombre + "-" + apellido + " soy " + this.nombre);
        // scope --> alcance los parametros en una funcion solo viven dentro de la funcion
    },
    listarHobbies: function(){
        /*
        <ol>
            <li>Music</li>
            <li>Baloncesto</li>
            <li>Series</li>
        </ol>
        const, let, var --> declarar variables
        var --> es para declarar variables, scope muy amplio, esta presente la variable durante todo el programa; 
        const --> es para guardar valores que no van a cambiar, no puedo reasignar, constantes, bloque
        let --> es igual que var, scope es reducido, bloque
         */
        const ol = document.createElement("ol");
        this.hobbies.forEach(function (hobbie){// cada vez que pasa por los valores del array ejecutara la funcion, ("Music"), ("Baloncesto"), ("Series")
            const li = document.createElement("li")
            li.textContent = hobbie;
            ol.appendChild(li);
        })
        const body = document.querySelector("body")
        body.appendChild(ol);
    },
    calcularAnioNacimiento: function(){
        // 2022 - edad = anio nacimiento
        let today = new Date();
        let currentYear = today.getFullYear();
        return currentYear - this.edad;
    },
    //7 - debe poder presentarse mostrando en el HTML  un título con el nombre completo y en un párrafo la edad profesión y la descripción,
    // <h1>Oscar Nuñez</h1>
    // <p> Tengo 42 años soy Metrologo. Auditor interno en sistemas de gestion de calidad y estudiate de programacion.</p>
    presentarse: function(){
        Swal.fire({
            title: 'Envia tu nombre de usuario',
            input: 'text',
            inputAttributes: {
              autocapitalize: 'on'//Controla las mayusculas o las minusculas
            },
            showCancelButton: true,
            confirmButtonText: 'Enviar',
            showLoaderOnConfirm: true,
            preConfirm: (login) => {
              return fetch(`//api.github.com/users/${login}`)
                .then(response => {
                  if (!response.ok) {
                    throw new Error(response.statusText)
                  }
                  return response.json()
                })
                .catch(error => {
                  Swal.showValidationMessage(
                    `Request failed: ${error}`
                  )
                })
            },
            allowOutsideClick: () => !Swal.isLoading()
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire({
                title: `${result.value.login}'s avatar`,
                imageUrl: result.value.avatar_url
              })
            }
          })
        // const titulo = document.createElement("h1");
        // titulo.textContent = `${this.nombre} ${this.apellido}`;
        // const parrafo = document.createElement("p");
        // parrafo.textContent = `Tengo ${this.edad} años soy ${this.profesion}. ${this.descripcion}.`
        // document.querySelector("body").appendChild(titulo);
        // document.querySelector("body").appendChild(parrafo);
    }
}

// this -> palabra reservada del lenguaje   

//  console.log("Hola " + persona.nombre);

console.log(persona.nombre) // atributo normal, no un metodo
persona.nombreCompleto() // una funcion, un metodo
persona.saludar("Gerson", "Cruz", "soy una persona")
persona.listarHobbies();
console.log(persona.calcularAnioNacimiento());
persona.presentarse();

