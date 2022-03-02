/*
    1. Créer une variable avec votre prenom, que vous allez appeler prenom
    2. Réaliser un affichage dans votre console : Bonjour je m'appelle prenom
*/

let prenom = "Alexis";
console.log("Bonjour je m'appelle " + prenom);

let prenom2 = 'Greg';
console.log(`Bonjour, je m'appelle ${prenom2}.`);

/*
    3. Je veux avoir : Bonjour je m'appelle prenom dans un tableau de chaines de caractères (utilisez le split())
    4. Mettre le résultat de votre réponse 3 en majuscule
*/

let text = "Bonjour, je m'appelle Alexis";
let text2 = text.toUpperCase().split(" ");
console.log(text2);

/* version compacte */
console.log("Bonjour, je m'appelle Alexis".toUpperCase().split(" "));

/* 5. Splitez la lettre o dans " Bonjour, jolie journée aujourd'hui " */

console.log("Bonjour, jolie journée aujourd'hui".split('o'));

// decla de tableaux 

const numbers = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

const fruits = ["mangue", "pastèque", "poire", "orange", "ananas"];


// acces a un element du tableau 

console.log(fruits[0]); // acces au 1ere element  

console.log(fruits[7]); // acces au 8eme element  

fruits.unshift("fraise"); // ajout au debut du tableau 

fruits.push("banane"); // ajout en fin de tableau 

fruits.shift(); // supprimer le 1er element 

fruits.pop(); // supprimer le dernier element 

console.log(fruits.indexOf("orange")); // retourne la position de l'element orange 

console.log(Array.isArray(fruits));  // true

const personne = {

    prenom: "Julien",

    nom: "La garde",

    age: 30,

    passions: ["foot", "natation", "jeux videos"],

    adresse: {

        rue: "rue Nationale",

        ville: "Lille",

        pays: "France"

    }

};

//  afficher un objet 

console.log(personne);

// acces aux attributs de l'objet 

console.log(personne.prenom); // acces au prenom

console.log(personne.passions[0]); // acces au 1er element des passions  

console.log(personne.adresse.rue); // acces a la rue (qui est lui meme un attribut de l'objet adresse')  

personne.prenom = "Julie"; // modifie la valeur d'un attribut  

console.log(personne.prenom); // afficher la nouvelle valeur  

personne.email = "julie@example.com"; // ajout d'un nouvel attribut  

console.log(personne); // affiche le nouvel attribut

const x = 14;

const y = 10;



if (x == y) {

    console.log("les deux nombres sont égaux");

} else if (x > y) {

    console.log("x est supérieur à y");

}

else {

    console.log("x est inférieur à y");

}



if (x > y && x < 20) {

    console.log("nombre autorisé");

}

const message = x == y ? "commande permise" : "commande non permise";

console.log(message);

/* 6. feux tricolore, en utilisant le switch afficher l'action à effectuer :
        --> feu = vert --> avancez !
        --> feu = orange --> ralentissez !
        --> feu = rouge --> arrêtez vous !
*/

let feu = "orange";

switch (feu) {
    case "vert":
        console.log('Avancez!');
        break;
    case "orange":
        console.log('Ralentissez!');
        break;
    case "rouge":
        alert('Arrêtez vous!');
        break;
    default:
        console.log("Respectez le petit panneau ou la priorité à droite");
        break;
}

// for (let i = 0; i < todos.length; i++) {

//     document.write(todos[i].text + "<br>");

// }



// let i = 0;

// while (i < todos.length) {

//     document.write(todos[i].text + "<br>");

//     i++;

// }



// todos.forEach(function (todo) {

//     document.write(todo.text + "<br>");

// });



// const listeTodo = todos.map(function (todo) {

//     return todo.text;

// });

/*
    Exercice Garage : je vais vous donner un tableau d'objet sur lequel on va travailler
*/

const garage = [
    {
        marque: 'Ferrari',
        couleur: 'rouge'
    },
    {
        marque: 'BMW',
        couleur: 'grise'
    },
    {
        marque: 'LADA',
        couleur: 'marron'
    },
]

/*
    7. afficher toutes les voitures : avec la phrase suivante : J'ai une marque de couleur couleur
*/
function affiche() {
    garage.map(function (voiture) {
        console.log("j'ai une " + voiture.marque + " de couleur " + voiture.couleur);
    })
}
affiche();

/*
    8. Ajoutez une Peugeot bleue à la liste
*/

garage.push({
    marque: 'Peugeot',
    couleur: 'Bleue',
})

affiche();

// implementation d'une fonction 

// fonction avec param et retour de valeur 

function somme(a, b) {

    return a + b;

}


// fonction sans param et sans retour de valeur 

function affichageDate() {

    const date = new Date();

    document.write(

        `aujourd'hui il est le ${date.getDate()}/${date.getMonth() + 1}/${date.getFullYear()}`

    );

}

x1 = 5;

y1 = 10;

// appel des fonctions 

const total = somme(x1, y1); 

document.write(total); 

document.write(somme(x1, y1)); 

document.write(somme(12, 20)); 

affichageDate();

/* Calculatrice */

function somme(a, b) {
    return a + b;
}
function soustraction(a, b){
    return a - b;
}
function multiplication(a , b){
    return a * b;
}
function division (a , b){
    return a / b;
}

let nb1 = parseInt(prompt('tapez nombre'));

let operation = prompt('Tapez +, -, *, /');

let nb2 = parseInt(prompt('tapez nombre'));

switch(operation){
    case '+':
        document.write(somme(nb1, nb2));
    break;
    case '-':
        document.write(soustraction(nb1, nb2));
    break;
    case '*':
        document.write(multiplication(nb1, nb2));
    break;
    case '/':
        document.write(division(nb1, nb2));
    break;
}