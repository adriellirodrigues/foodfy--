const express = require('express')
const routes = express.Router()
// const recipes = require("./data")
const recipes = require("./app/controllers/recipes")
const chefs = require("./app/controllers/chefs")
const siteChefs = require("./app/controllers/siteChefs")
const siteRecipes = require("./app/controllers/siteRecipes")



routes.get("/", function(req, res){
    return res.render("index")
})
routes.get("/recipes", siteRecipes.index)
routes.get("/recipes/:id", siteRecipes.show)
routes.get("/search-recipe", siteRecipes.all)


routes.get("/chefs", siteChefs.index)
routes.get("/chefs/:id", siteChefs.show)

routes.get("/about", function(req, res){
    return res.render("about")
})

routes.get("/admin/chefs/", chefs.index)
routes.get("/admin/chefs/create", chefs.create)
routes.post("/admin/chefs/create", chefs.post)
routes.get("/admin/chefs/:id", chefs.show)
routes.get("/admin/chefs/:id/edit", chefs.edit); // Mostrar formulário de edição de receita
routes.put("/admin/chefs", chefs.put); // Editar uma receita
routes.delete("/admin/chefs", chefs.delete)



routes.get("/admin/recipes/create", recipes.create)
routes.get("/admin/recipes/", recipes.index)
routes.get("/admin/recipes/:id", recipes.show); // Exibir detalhes de uma receita
routes.get("/admin/recipes/:id/edit", recipes.edit); // Mostrar formulário de edição de receita
routes.post("/admin/recipes/create", recipes.post); 
routes.put("/admin/recipes", recipes.put); // Editar uma receita
routes.delete("/admin/recipes", recipes.delete)

routes.use(function(req, res){
    res.status(404).render("not-found")
})

module.exports = routes

// routes.get("/admin/recipes", recipes.index); // Mostrar a lista de receitas
// routes.get("/admin/recipes/create", recipes.create); // Mostrar formulário de nova receita
// routes.get("/admin/recipes/:id", recipes.show); // Exibir detalhes de uma receita
// routes.get("/admin/recipes/:id/edit", recipes.edit); // Mostrar formulário de edição de receita

// routes.put("/admin/recipes", recipes.put); // Editar uma receita
// routes.delete("/admin/recipes", recipes.delete); // Deletar uma receita


// routes.post("/admin/recipes", recipes.post); // Cadastrar nova receita
