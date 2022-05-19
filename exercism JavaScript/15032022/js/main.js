/*El proyecto es simular la carga de los productos de una tienda.

Las partes estaticas de la pagina, titulo, descripcion y about us, cambiarlas de acuerdo a lo que escojan que quieran
 que sea la tienda, dentro del HTML.

La seccion de productos debe ser cargada con Javascript, para esto revisar que se deberia crear para cargar 10 productos 
a la tienda, cada uno debe tener lo que se visualiza (card, imagen, titulo, descripcion, link a la pagina del producto, 
otro link que lleve a google.com)

Plus, crear una funcion de JS que permita desde consola agregar un producto al HTML*/

//JSON = objetos javascript en formato "string" para poderlos mandar via internet, 
// las API Application Program Interface
const products = [
    {
        id: 1,
        title: "Buso Unisex",
        description: "Buso Jordan color verde Unisex",
        img_src: "https://static.dafiti.com.co/p/kuva-1623-9205841-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 2,
        title: "Buso Unisex",
        description: "Buso Jordan color amarillo Unisex",
        img_src: "https://static.dafiti.com.co/p/kuva-2729-6773081-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
        },
    {
        id: 3,
        title: "Buso Unisex",
        description: "Buso Jordan color blanco Unisex",
        img_src: "https://static.dafiti.com.co/p/kuva-1623-9205841-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 4,
        title: "Buso Unisex",
        description: "Buso Jordan color negro Unisex",
        img_src: "https://static.dafiti.com.co/p/kuva-2729-6773081-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 5,
        title: "Falda",
        description: "Falda Animal Print",
        img_src: "https://static.dafiti.com.co/p/kuva-1623-9205841-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 6,
        title: "Falda Unicolor",
        description: "Falda larga color negro",
        img_src: "https://static.dafiti.com.co/p/kuva-2729-6773081-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 7,
        title: "Falda Unicolor",
        description: "Falda larga color blanco",
        img_src: "https://static.dafiti.com.co/p/kuva-1623-9205841-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 8,
        title: "Blusa Unicolor",
        description: "Blusa blanca",
        img_src: "https://static.dafiti.com.co/p/kuva-2729-6773081-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 9,
        title: "Blusa Unicolor",
        description: "Blusa negra",
        img_src: "https://static.dafiti.com.co/p/kuva-1623-9205841-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    {
        id: 10,
        title: "Camiseta Jordan",
        description: "Camiseta Jordan varios colores",
        img_src: "https://static.dafiti.com.co/p/kuva-2729-6773081-1-catalog-new.jpg",
        prod_link: "producto",
        google_link: "google"
    },
    
];

//let carrito = [];

// function that receives a product object
// and draw in the document the card presentation for it
function showProduct(product){
    const myNode = document.createElement('div');
    myNode.classList.add('card', 'col-sm-4');
   
    const myNodeCardBody = document.createElement('div');
    myNodeCardBody.classList.add('card-body');

    const myNodeTitle = document.createElement('h5');
    myNodeTitle.classList.add('card-title');
    myNodeTitle.textContent = product.title;
   
    const myNodeImagen = document.createElement('img');
    myNodeImagen.classList.add('img-fluid');
    myNodeImagen.setAttribute('src', product.img_src);

    
    const myNodedescription = document.createElement('p');
    myNodedescription.classList.add('card-text');
    myNodedescription.textContent = product.description;
   
    const prodLink = document.createElement("a");
    prodLink.href = product.prod_link;
    prodLink.textContent = "Go to the product"

    const googleLink = document.createElement("a");
    googleLink.href = product.google_link;
    googleLink.textContent = "google"

    // anidaciones

    myNodeCardBody.appendChild(myNodeImagen);
    myNodeCardBody.appendChild(myNodeTitle);
    myNodeCardBody.appendChild(myNodedescription);
    myNodeCardBody.appendChild(prodLink);
    myNodeCardBody.appendChild(googleLink);
    myNode.appendChild(myNodeCardBody);

    const DOMitems = document.querySelector("#items");
    DOMitems.appendChild(myNode);
    

}

// myProducts is an array of product objects, iterate throught it and call showProduct function to draw in DOM 
function showProducts(myProducts) {
    myProducts.forEach((product) => {
        showProduct(product);
    });
}

showProducts(products);
/*
<div class="card-body">
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
              </div>*/
              