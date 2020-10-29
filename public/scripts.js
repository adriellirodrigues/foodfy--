const modalOverlay = document.querySelector('.modal-overlay')
const cards = document.querySelectorAll('.card')


// 
const recipes = document.querySelectorAll('.card')

for (let card of recipes) {

    //recebe as receitas do data.js pelo ID

        card.addEventListener("click", function () {
        const recipeId = card.getAttribute('id')
        window.location.href = `/recipe/${recipeId}`
        //ao receber o id direciona pra page /receita/id
    })
}




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


