//En este ejercicio deberás agregar dos metodos al objeto ´persona´.

//Agregar un método llamado saludar que reciba un nombre y retorne una frase saludando a esa persona como se muestra a continuación

//persona.saludar("pedro"); //"Hola Pedro, Me llamo maria"
//persona.saludar("pedro"); //"Hola Juan, Me llamo maria"

//agregar otro método llamado bmi que retorne el indice de masa corporal de la persona reccuerda que el indice de masa corporal se calcula con la siguiente formula ´peso / altura^2 ´

var persona = {
    name1: "Pedro",
    name2: "Juan",
    name3: "Maria",
    peso_name1: 54,
    peso_name2: 80,
    altura_name1: 1.7,
    altura_name2: 1.80,
    saludar: function () {
        document.write(`Hola! ${this.name1},  Me llamo  ${this.name3} </br>`);
        document.write(`Hola! ${this.name2},  Me llamo  ${this.name3} </br>`);
    },
    bmi: function () {
        masa_corporal = this.peso_name1 / (parseFloat(this.altura_name1 * this.altura_name1));
        masa_corpora2 = this.peso_name2 / (parseFloat(this.altura_name2 * this.altura_name2));
        //document.write(`Hola, me llamo ${this.name1}  y mi bmi es de :   ${masa_corporal} </br>`);
        //document.write(`Hola, me llamo  ${this.name2}  y mi bmi es de :   ${masa_corpora2} </br>`);

    return this.bmi;

    }

}

persona.saludar();
persona.bmi();

