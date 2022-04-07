const currentPage = location.pathname
const menuItems = document.querySelectorAll('header li a')
// const modalOverlay = document.querySelector('.modal-overlay')
const cards = document.querySelectorAll('.card')
const manageRecipes = document.querySelectorAll('.item')


for (item of menuItems) {
  if(currentPage.includes(item.getAttribute("href"))) {
    item.classList.add("active")
  }
}

// ADMIN CREATE RECIPE
function addIngredient() {
  const ingredients = document.querySelector("#ingredients");
  const fieldContainer = document.querySelectorAll(".ingredient");

  // Realiza um clone do último ingrediente adicionado
  const newField = fieldContainer[fieldContainer.length - 1].cloneNode(true);
  console.log(newField)
  // Não adiciona um novo input se o último tem um valor vazio
  if (newField.children[0].value == "") return false

  // Deixa o valor do input vazio
  newField.children[0].value = "";
  ingredients.appendChild(newField);
}

document.querySelector(".add-ingredient").addEventListener("click", addIngredient);

    // // Delete last step ingredient

    // function excludeIngredient(){
    //   const fieldContainer = document.querySelectorAll(".ingredient");
    //   const deletedField = fieldContainer[fieldContainer.length - 1]
    //   deletedField.parentNode.removeChild(deletedField)

      
    // }

    // document.querySelector(".exclude-ingredient").addEventListener("click", excludeIngredient);

  
  function addInstruction() {
    const instructions = document.querySelector("#instructions");
    const fieldContainer = document.querySelectorAll(".instruction");
  
    // Realiza um clone do último ingrediente adicionado
    const newField = fieldContainer[fieldContainer.length - 1].cloneNode(true);
  
    // Não adiciona um novo input se o último tem um valor vazio
    if (newField.children[0].value == "") return false;
  
    // Deixa o valor do input vazio
    newField.children[0].value = "";
    instructions.appendChild(newField);
  }
  
  document
    .querySelector(".add-instruction")
    .addEventListener("click", addInstruction);


var buttons = document.querySelectorAll('.btn');


for (let i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener('click', function() {
        document.querySelector('.content' + i).classList.toggle('hide');
            if (document.querySelector('.content' + i).classList.contains('hide')) {
                buttons[i].innerHTML = 'mostrar'
                console.log(buttons)
            }
            else{
                buttons[i].innerHTML = 'esconder'
            }
    })
    
}
// ADMIN CREATE RECIPE END



// // const editRecipe = document.querySelectorAll('.item')


// // RECIPES PAGE
// const recipes = document.querySelectorAll('.card')

// for (let card of recipes) {

//     //recebe as receitas do data.js pelo ID

//         card.addEventListener("click", function () {
//         const recipeId = card.getAttribute('id')
//         window.location.href = `/recipe/${recipeId}`
//         //ao receber o id direciona pra page /receita/id
//     })
// }
// // ADMIN PANEL - RECIPES CREATE

// for (let card of manageRecipes) {

//   //recebe as receitas do data.js pelo ID

//       card.addEventListener("click", function () {
//       const recipeId = card.getAttribute('id')
//       window.location.href = `/admin/recipes/${recipeId}`

//       // INSTRUÇÃO PARA SEGUIR.. PEGAR ID PARA EDITAR,
//       // OLHAR NO PROJETO DA ACADEMIA PARA INSIGHT.

//       // CRIAR FUNÇÃO EDIT NO ARQUIVO RECIPES.JS (CRIAR TBM)
      
//       //ao receber o id direciona pra page /receita/id
//   })
// }

// for (let card of editRecipe) {

//   //recebe as receitas do data.js pelo ID

//       card.addEventListener("click", function () {
//       const recipeId = card.getAttribute('id')
//       window.location.href = `/admin/recipes/${recipeId}/edit`

//       // INSTRUÇÃO PARA SEGUIR.. PEGAR ID PARA EDITAR,
//       // OLHAR NO PROJETO DA ACADEMIA PARA INSIGHT.

//       // CRIAR FUNÇÃO EDIT NO ARQUIVO RECIPES.JS (CRIAR TBM)
      
//       //ao receber o id direciona pra page /receita/id
//   })
// }


// var buttons = document.querySelectorAll('.btn');
// for (let i = 0; i < buttons.length; i++) {
//     buttons[i].addEventListener('click', function() {
//         document.querySelector('.content' + i).classList.toggle('hide');
//             if (document.querySelector('.content' + i).classList.contains('hide')) {
//                 buttons[i].innerHTML = 'mostrar'
//                 console.log(buttons)
//             }
//             else{
//                 buttons[i].innerHTML = 'esconder'
//             }
//     })
    
// }

function hideIngredients (){
  const IngredientsList = document.getElementById('ingredients')
  // Add id Ingredients on the class ingredients__list, atribute this id to the variable IngredientsList
  if (IngredientsList.style.display === "none") {
    IngredientsList.style.display = "block";
    // Ingredients List Display Block, to show again, after hide it

    document.getElementById("button-hide-ingredients").innerText = "Esconder";
    // Get id Button from HTML, value "Esconder"
  } else {
    IngredientsList.style.display = "none";
    document.getElementById("button-hide-ingredients").innerText = "Mostrar";
    // Same proccess, change the button state from "Esconder" to "Mostrar"

  }
 }

 function hidePreparation (){
  const IngredientsList = document.getElementById('preparation-mode')
  // Add id Ingredients on the class ingredients__list, atribute this id to the variable IngredientsList
  if (IngredientsList.style.display === "none") {
    IngredientsList.style.display = "block";
    // Engredients List Display Block, to show again, after hide it
    document.getElementById("button-hide-preparation").innerText = "Esconder";
    // Get id Button from HTML, value "Esconder"
  } else {
    IngredientsList.style.display = "none";
    document.getElementById("button-hide-preparation").innerText = "Mostrar";
    // Same proccess, change the button state from "Esconder" to "Mostrar"

  }
 }

 function hideInformation (){
  const IngredientsList = document.getElementById('information')
  // Add id Ingredients on the class ingredients__list, atribute this id to the variable IngredientsList
  if (IngredientsList.style.display === "none") {
    // 
    IngredientsList.style.display = "block";
    // Engredients List Display Block, to show again, after hide it
    document.getElementById("button-hide-info").innerText = "Esconder";
    // Get id Button from HTML, value "Esconder"
  
    // 
  } else {
    IngredientsList.style.display = "none";
    document.getElementById("button-hide-info").innerText = "Mostrar";

    // Same proccess, change the button state from "Esconder" to "Mostrar"

  }
 }


const formDelete = document.querySelector("#form-delete")
formDelete.addEventListener("button", function(event){
   const confirmation = confirm("Are you sure you want to delete?")
      if(!confirmation) {
         event.preventDefault()
      }
})
 