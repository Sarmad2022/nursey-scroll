const form = document.getElementById("my-form");

console.log(form);

const container = document.getElementsByClassName("container")

console.log(container);

/*
    créez 3 div vide avec une class qui s'appelle block, affichez la couleur blue en fond grace au js

    Ensuite attribuez un nombre pour chacun d'eux (le premier : 1 , le deuxieme 2 ...) tout ça grace au javascript
    vous pouvez utiliser les for pour attribuer les chiffres
*/

const blocks = document.querySelectorAll(".block");
console.log(blocks);
for (let i = 0; i < blocks.length; i++) {
    const element = blocks[i];
    element.textContent = i+1;
    element.style.background = 'blue';
    element.style.color = 'white';
    element.style.margin = '2px';
}


