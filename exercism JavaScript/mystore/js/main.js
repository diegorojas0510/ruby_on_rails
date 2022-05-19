// El proyecto es simular la carga de los productos de una tienda.
// Las partes estaticas de la pagina, titulo, descripcion y about us, 
//!cambiarlas de acuerdo a lo que escojan que quieran que sea la tienda, dentro del HTML.
//! La seccion de productos debe ser cargada con Javascript,
//? para esto revisar que se deberia crear para cargar 10 productos a la tienda,
//!cada uno debe tener lo que se visualiza (card, imagen, titulo, descripcion, link a la pagina del producto, otro link que lleve a google.com)
// ?Plus, crear una funcion de JS que permita desde consola agregar un producto al HTML


const product = [

    {
        image: "https://www.titicupon.com/sites/default/files/imagecache/coupon-slider-responsive/acan_ajust_1_6.jpg",
        card_title: "Hola Perro",
        card_text: "Soy la primera tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://www.elespectador.com/resizer/17lZxnmsXV-tFyQZjvxyjXsi_oA=/arc-anglerfish-arc2-prod-elespectador/public/XQ5OB4SRZ5B5LD7S7QIRCLHTVY.jpg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la segunda tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://www.diariodesevilla.es/2021/10/21/mascotas/Razas-perros-elegantes-mundo_1621947844_145821806_1200x675.jpg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la tercera tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://okdiario.com/img/2022/01/18/english-bulldog-5422018_1920-1-2-655x368.jpg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la cuarta tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://cr00.epimg.net/radio/imagenes/2022/01/21/tendencias/1642786463_329140_1642787054_noticia_normal.jpg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la quinta tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://www.mdzol.com/u/fotografias/m/2021/11/17/f608x342-1138554_1168277_15.jpg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la Sexta tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://www.lavanguardia.com/files/image_449_220/uploads/2021/10/02/61580b94f0e17.jpeg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la Septima tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    },
    {
        image: "https://static.dw.com/image/59713925_303.jpg",
        card_title: "Hola Perro",
        card_text: "Hola! Soy la octava tarjeta",
        card_link: "https://aprendejavascript.org/",
        card_link_google: "https://www.google.com/"
    }

]


function showElements(product){

const myCardPrimary = document.createElement("div");
myCardPrimary.classList.add("card","col-sm-4", "card-group");
myCardPrimary.style.width = '18rem';

const myCardBody = document.createElement("div");
myCardBody.classList.add("card-body");


const myCardImage = document.createElement("img");
myCardImage.classList.add("card-img-top");
// myCardImage.classList.add("img-fluid");
//myCardImage.classList.add("img-thumbnail");
myCardImage.classList.add("rounded");
myCardImage.classList.add("float-start");
myCardImage.setAttribute("src", product.image);

const myCardTitle = document.createElement("h5");
myCardTitle.classList.add("card-title");
myCardTitle.textContent= product.card_title;

const myCardText = document.createElement("p");
myCardText.classList.add("card-text");
myCardText.textContent = product.card_text;

const myCardLink = document.createElement("a");
myCardLink.classList.add("card-link");
myCardLink.href = product.card_link;
myCardLink.textContent = "Go to the product"

const myCardLinkGoogle = document.createElement("a");
myCardLinkGoogle.classList.add("card-link");
myCardLinkGoogle.href = product.card_link_google;
myCardLinkGoogle.textContent = "Google.com"

//Join tags
myCardPrimary.appendChild(myCardImage);
myCardBody.appendChild(myCardTitle);
myCardBody.appendChild(myCardText);
myCardBody.appendChild(myCardLink);
myCardBody.appendChild(myCardLinkGoogle);
myCardPrimary.appendChild(myCardBody);


    
    const tagsHtml = document.querySelector("#colum");
    tagsHtml.appendChild(myCardPrimary);





}
function showProducts(myProducts) {
    myProducts.forEach((product) => {
        showElements(product);
    });
}

showProducts(product);




















