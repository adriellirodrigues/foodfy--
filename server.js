const express = require('express')
const nunjucks = require('nunjucks')

const server = express()
const recipes = require("./data")


server.use(express.static('public'))   

server.set("view engine", "njk")

nunjucks.configure("views", {
    express:  server,
    autoescape: false,
    noCache: true
})


server.get("/", function(req, res){

    return res.render("index", { items: recipes} )
})

server.get("/about", function(req, res){

    return res.render("about")
})

server.get("/recipes", function(req, res){

    return res.render("recipes", { items: recipes} )
})

// server.get("/recipes/:index", function (req, res) {
     
//     const recipeIndex = req.params.index; 
//     // Criando variável que recebe o index (posição do array)

//     const recipe = recipes.findIndex(function(recipe){
//         if(recipe.recipeIndex == recipeIndex) {
//             return true
//         } else if (!recipe) {
//             return res.send('<h3>Recipe not found!</h3>')
//         }
//     })

//     return res.render("recipe", { item : recipes[recipeIndex]  } );
  
//   })

// server.get("/recipes/:index", function(req, res){
//     const {index:recipeIndex} = req.params

//     const recipe = recipes[recipeIndex]
//     if(!recipe){
//         return res.send("Recipe not found!")
//     }
//     return res.render("recipe", {item: recipe, recipeIndex})
// })

server.get("/recipe/:id", function (req, res) {
  
    const recipeId = req.params.id //puxa o id e utilizo o recipeId no scripts
    
    return res.render("recipe", {item: recipes[recipeId]} ) 
    //direciona pra receita e pega os dados do Id
  })

server.use(function(req, res){
    res.status(404).render("not-found")
})

server.listen(5000, function() {
    console.log("Server is Running")
})